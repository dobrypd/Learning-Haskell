-- Module Interpreter
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Interpreter where

import Control.Monad.State

import Environment

import AbsKappaGrammar
import PrintKappaGrammar
import ParKappaGrammar
import ErrM

import Debug.Trace --DEBUG
import PrintKappaGrammar --DEBUG


-- GLOBALS AND PROGRAM INTERPRETATION
interpretProgram :: Program -> State Env Value
interpretProgram prog = trace "program interpretation" $ case prog of --DEBUG 
        Progr [] -> interpretExp (Efunk (Ident "main") ([]))
        Progr (d:rest) -> do
                interpretDeclaration d
                interpretProgram (Progr rest)  
                 
        
interpretDeclaration :: DGlobalDeclaration -> State Env Value
interpretDeclaration globalDec = trace "interpret declarations" $ case globalDec of --DEBUG
        DFunction f_def -> decFunction f_def
        DGlobal d -> decGlobal d
        DNamespace ns -> decNs ns

decFunction :: Function_def -> State Env Value
decFunction f_def = case f_def of
        NewFunction ts declarator stmtsAndDecsList -> newFunction ts declarator stmtsAndDecsList

nameIdentFromDeclarator :: Declarator -> Ident
nameIdentFromDeclarator declarator = case declarator of
        VarName id -> id
        _ -> error "parser error no 1234, should be VarName " --TODO: error

identFromParameter :: Parameter -> Ident
identFromParameter (SingleParam _ declarator) = nameIdentFromDeclarator declarator

newFunction :: Type_specifier -> Declarator -> [StmOrDec] -> State Env Value
newFunction ts dec stmDecList = do
        trace ("new funtion " ++ printTree(ts) ++ " " ++ printTree(dec) ++ " " ++ printTree(stmDecList) ++ ".") $ return Undefined
        case dec of
                FunctionName declarator parameters -> do
                        -- parameters is list of SingleParam Type_specifier Declarator. 
                        -- Both Declarators should be VarName Ident
                        env <- get
                        env' <- do
                                let idents = map identFromParameter parameters
                                    fun_ident = nameIdentFromDeclarator declarator in
                                        case (addFunction env fun_ident (idents, stmDecList)) of
                                                Bad err -> return env --error err --TODO: error messages
                                                Ok  env'' -> return env''
                        put env'
                        return Undefined --TODO: what?
                                 
                _ -> return $ ErrorOccurred "TODO: check all possibilities "

decGlobal :: Dec -> State Env Value
decGlobal d = case d of
        --JustType ts -> return $ ErrorOccurred "Warning, does nothing"
        Declarators ts init_decltrs -> trace ("global declaration : " ++ (show (ts)) ++ " " ++ (printTree (init_decltrs))) $ decDeclare ts init_decltrs
        
decDeclare :: Type_specifier -> [Init_declarator] -> State Env Value
decDeclare ts [] = trace ("declarred all " ++ printTree(ts)) $ return Undefined --DEBUG       
decDeclare ts (init_decltr:rest_init) = trace "declaration declare" $ do --DEBUG
        ident <- do
                case init_decltr of
                        OnlyDecl d -> case d of
                                VarName ident -> return ident
                                --FucntionName d parameters ->
                        InitDecl d initializer -> case d of
                                VarName ident -> return ident
                                --FucntionName d parameters ->
        env <- trace ("declaration with initialization: " ++ (printTree ts) ++ " " ++ (printTree init_decltr)) $ get --DEBUG
        init_val <- trace ("getting initial value" ) $case ts of --DEBUG
                Type_specifier_int -> case init_decltr of
                        OnlyDecl d -> return $ trace ("int will be inited to 0") $ (VInt 0) --DEBUG
                        InitDecl d initializer -> case initializer of
                                InitExpr e -> (interpretExp e)
                        --InitList listOfInitializers
                        
                Type_specifier_float -> case init_decltr of
                        OnlyDecl d -> return (VFloat 0.0)
                        InitDecl d initializer -> case initializer of
                                InitExpr e -> (interpretExp e)
                                --InitList listOfInitializers

                        
                Type_specifier_bool -> case init_decltr of
                        OnlyDecl d -> return (VBoolean False)
                        InitDecl d initializer -> case initializer of
                                InitExpr e -> (interpretExp e)
                                --InitList listOfInitializers
                -- TODO: (Type_specifierStruct_spec structSpec) -> do
        env' <- do
                case (addVariable env ident init_val) of
                        Bad err -> return env --error err --TODO: error messages
                        Ok  env'' -> trace("not returned new env: " ++ show(env'')) $ return env''
        put env'
        decDeclare ts rest_init
        return init_val

decNs :: Namespace -> State Env Value
decNs d = return $ ErrorOccurred "czesc"

data StmVal = GO | BREAK | CONTINUE | RETURN Value | RETURNE

-- STATEMENTS
interpretStm :: Stm -> State Env StmVal
interpretStm stm = case stm of
        ListS list -> stmList list
        ExprS e_stm -> case e_stm of
                Sempty -> return GO
                Sexpr e -> do
                        interpretExp e
                        return GO
        IfS if_kind -> case if_kind of
                SIf e s -> do
                        interpretStm (IfS (SIfElse e s (ExprS (Sempty))))
                SIfElse e s1 s2 -> stmSIf e s1 s2
        IterS iter_kind -> case iter_kind of
                SiterWhile e s -> stmWhile e s
                SiterFor es1 es2 e s -> stmFor es1 es2 e s
        JumpS jump_kind -> case jump_kind of
                SjumpTwo -> stmContinue
                SjumpThree -> stmBreak 
                SjumpFour -> stmOnlyReturn
                SjumpFive e -> stmReturn e
                

stmList :: [StmOrDec] -> State Env StmVal
stmList [] = return GO
stmList (stm:rest) = do --TODO: test break, continue, return !!!
        ret_value <- case stm of
                SDec d -> do 
                        value <- decGlobal d
                        return GO
                SStm s -> do
                        value <- interpretStm s
                        return value
        case ret_value of
                GO -> do
                        stmList rest
                otherwise -> return ret_value


stmSIf :: Exp -> Stm -> Stm -> State Env StmVal
stmSIf e s1 s2 = do
        val <- interpretExp e
        case val of
                VInt v -> if v /= 0 then interpretStm s1
                                    else interpretStm s2
                VFloat v -> if v /= 0.0  then interpretStm s1
                                          else interpretStm s2
                VBoolean v -> if v then interpretStm s1
                                   else interpretStm s2
                _ -> return $ RETURN $ ErrorOccurred "Expression in if statement should returns one of int, float or bool"

stmWhile :: Exp -> Stm -> State Env StmVal
stmWhile e s = do
        val <- interpretExp e
        stm_val <- case val of
                VInt v -> if v /= 0 then do
                                val <- interpretStm s
                                return val
                        else return BREAK
                VFloat v -> if v /= 0.0  then do
                                val <- interpretStm s
                                return val
                        else return BREAK
                VBoolean v -> if v then do
                                val <- interpretStm s
                                return val
                        else return BREAK
                _ -> error "in while expression should be int, float, or boolean" --TODO! error msgs
        case stm_val of
                GO -> stmWhile e s 
                CONTINUE -> stmWhile e s
                BREAK -> return GO --break only single loop
                _ -> return stm_val -- RETURN [V]


stmFor :: Expression_stm -> Expression_stm -> Exp -> Stm -> State Env StmVal
stmFor es1 es2 e s = do
        case es2 of
                Sempty ->
                        interpretStm (ListS [SStm (ExprS es1), SStm (IterS (SiterWhile (Econst (Eint (1))) (ListS [SStm s, SStm (ExprS (Sexpr e))]) ) ) ] )
                Sexpr ee ->
                        interpretStm (ListS [SStm (ExprS es1), SStm (IterS (SiterWhile (ee) (ListS [SStm s, SStm (ExprS (Sexpr e))]) ) ) ] )

stmContinue :: State Env StmVal
stmContinue = return CONTINUE

stmBreak :: State Env StmVal
stmBreak = return BREAK

stmOnlyReturn :: State Env StmVal
stmOnlyReturn = return RETURNE

stmReturn :: Exp -> State Env StmVal
stmReturn e = do
        value <- interpretExp e
        return $ RETURN value

-- EXPRESSIONS
interpretExp :: Exp -> State Env Value
interpretExp exp = case exp of
        Ecomma e1 e2 -> expComma e1 e2
        Eassign ident e2 -> expAssign ident e2
        Econdition e1 e2 e3 -> expCondition e1 e2 e3
        Elor e1 e2 -> expLor e1 e2
        Eland e1 e2 -> expLand e1 e2
        
        Eeq e1 e2 -> expEq e1 e2
        Eneq e1 e2 -> expNeq e1 e2
        Elthen e1 e2 -> expLten e1 e2
        Egrthen e1 e2 -> expGrthen e1 e2
        Ele e1 e2 -> expLe e1 e2
        Ege e1 e2 -> expGe e1 e2
        
        Eplus e1 e2 -> expPlus e1 e2
        Eminus e1 e2 -> expMinus e1 e2
        Etimes e1 e2 -> expTimes e1 e2
        Ediv e1 e2 -> expDiv e1 e2
        Emod e1 e2 -> expMod e1 e2
        
        Etypeconv ts e -> expTypeConv ts e
        
        Epreinc ident -> expPreinc ident
        Epredec ident -> expPredec ident
        Epreop op e -> expPreop op e
        
        Efunk id args -> expFunk id args
        
        Evar id -> expVar id
        
        Econst c -> expConst c
        otherwise -> return $ Undefined




expComma :: Exp -> Exp -> State Env Value
expComma e1 e2 = do
        val1 <- interpretExp e1
        val2 <- interpretExp e2        
        return val2

expAssign :: Ident -> Exp -> State Env Value
expAssign ident e2 = do 
        value <- interpretExp e2
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> return env --error err --TODO: error messages
                        Ok  env'' -> return env''
        put env'
        return value
        
expCondition :: Exp -> Exp -> Exp -> State Env Value
expCondition e1 e2 e3 = do
        value <- interpretExp e1
        value2 <- case value of
                VInt i -> do
                        if i /= 0
                                then interpretExp e2
                                else interpretExp e3
                VFloat d -> do
                        if d /= 0.0
                                then interpretExp e2
                                else interpretExp e3
                VBoolean b -> do
                        if b
                                then interpretExp e2
                                else interpretExp e3
                otherwise -> return $ ErrorOccurred $ (show value) ++ " should be an int, float or bool" --TODO: error messages
        return value2
        
expBool :: Exp -> State Env Value
expBool e = do
        value <- interpretExp e
        bol <- return $ case value of
                VInt i -> i /= 0
                VFloat d -> d /= 0.0
                VBoolean b -> b
                otherwise -> False --error $ (show value) ++ " should be an int, float or bool" --TODO: error messages
        return (VBoolean bol)

expLor :: Exp -> Exp -> State Env Value                    
expLor e1 e2 = do
        bb1 <- expBool e1
        case bb1 of
                VBoolean b1 -> do
                        if b1 then return (VBoolean True)
                               else return (VBoolean False)
                        bb2 <- expBool e2
                        case bb2 of
                                VBoolean b2 -> return $ VBoolean (b1 || b2)
                                otherwise -> return $ ErrorOccurred "Error inside interpreter in function expBool and expLor"
                otherwise -> return $ ErrorOccurred "Error inside interpreter in function expBool and expLor"
                
expLand :: Exp -> Exp -> State Env Value                    
expLand e1 e2 = do
        bb1 <- expBool e1
        case bb1 of
                VBoolean b1 -> do
                        bb2 <- expBool e2  
                        case bb2 of
                                VBoolean b2 -> return $ VBoolean (b1 && b2)
                                otherwise -> return $ ErrorOccurred "Error inside interpreter in function expBool and expLor"
                otherwise -> return $ ErrorOccurred "Error inside interpreter in function expBool and expLor"
           
expEq :: Exp -> Exp -> State Env Value     
expEq e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 == v2)

expNeq :: Exp -> Exp -> State Env Value  
expNeq e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 /= v2)

expLten :: Exp -> Exp -> State Env Value
expLten e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 < v2)
        

expGrthen :: Exp -> Exp -> State Env Value
expGrthen e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 > v2)


expLe :: Exp -> Exp -> State Env Value
expLe e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 <= v2)


expGe :: Exp -> Exp -> State Env Value
expGe e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        return $ VBoolean (v1 >= v2)

expPlus :: Exp -> Exp -> State Env Value
expPlus e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        case (v1, v2) of
                (VInt x1, VInt x2) -> return $ VInt (x1 + x2)
                (VFloat x1, VFloat x2) -> return $ VFloat (x1 + x2)
                (_, ErrorOccurred s) -> return $ ErrorOccurred s
                otherwise -> return Undefined

expMinus :: Exp -> Exp -> State Env Value
expMinus e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        case (v1, v2) of
                (VInt x1, VInt x2) -> return $ VInt (x1 - x2)
                (VFloat x1, VFloat x2) -> return $ VFloat (x1 - x2)
                (_, ErrorOccurred s) -> return $ ErrorOccurred s
                otherwise -> return Undefined


expTimes :: Exp -> Exp -> State Env Value
expTimes e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        case (v1, v2) of
                (VInt x1, VInt x2) -> return $ VInt (x1 * x2)
                (VFloat x1, VFloat x2) -> return $ VFloat (x1 * x2)
                (_, ErrorOccurred s) -> return $ ErrorOccurred s
                otherwise -> return Undefined


expDiv :: Exp -> Exp -> State Env Value
expDiv e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        case (v1, v2) of
                (VFloat x1, VFloat x2) -> return $ VFloat (x1 / x2)
                (_, ErrorOccurred s) -> return $ ErrorOccurred s
                otherwise -> return Undefined


expMod :: Exp -> Exp -> State Env Value
expMod e1 e2 = do
        v1 <- interpretExp e1
        v2 <- interpretExp e2
        case (v1, v2) of
                (VInt x1, VInt x2) -> return $ VInt (x1 `mod` x2)
                (ErrorOccurred s, _) -> return $ ErrorOccurred s
                (_, ErrorOccurred s) -> return $ ErrorOccurred s
                otherwise -> return Undefined


expTypeConv :: Type_specifier -> Exp -> State Env Value
expTypeConv ts e = do
        value <- interpretExp e
        case ts of
                Type_specifier_int -> case value of
                        (VInt v) -> return (VInt v)
                        (VFloat f) -> return $ VInt (floor f)
                        (VBoolean b) -> if b    then return (VInt (1))
                                                else return (VInt (0))
                        (ErrorOccurred err) -> return $ ErrorOccurred err
                        otherwise -> return Undefined
                Type_specifier_float -> case value of
                        (VInt v) -> return (VFloat (fromIntegral v))
                        (VFloat f) -> return (VFloat f)
                        (VBoolean b) -> if b    then return (VFloat (1.0))
                                                else return (VFloat (0.0))
                        (ErrorOccurred err) -> return $ ErrorOccurred err
                        otherwise -> return Undefined
                Type_specifier_bool -> case value of
                        (VInt v) -> do
                                if v /= 0 then return (VBoolean True)
                                          else return (VBoolean False)
                        (VFloat f) -> do
                                if f /= 0.0 then return (VBoolean True)
                                            else return (VBoolean False)    
                        (VBoolean b) -> return $ VBoolean b
                        (ErrorOccurred err) -> return $ ErrorOccurred err
                        otherwise -> return Undefined
                Type_specifierStruct_spec st -> case value of -- INFO: quite sophisticated
                        --(VStruct list) -> return $ VStruct (filter (\(ident, value)  ->  ()) list) 
                        otherwise -> return Undefined
                        
expPreinc :: Ident -> State Env Value
expPreinc ident = do
        value <- interpretExp (Eplus (Evar ident) (Econst (Eint 1)))
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> return env --error err --TODO: error messages
                        Ok  env'' -> return env''
        put env'
        return value
                
expPredec :: Ident -> State Env Value
expPredec ident = do
        value <- interpretExp (Eminus (Evar ident) (Econst (Eint 1)))
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> return env -- error err --TODO: error messages
                        Ok  env'' -> return env''
        put env'
        return value
                         
expPreop :: Unary_operator -> Exp -> State Env Value
expPreop op e = do
        value <- interpretExp e
        case op of
                Negative -> case value of
                        (VInt v) -> return (VInt (-v))
                        (VFloat f) -> return (VFloat (-f))
                        ErrorOccurred s -> return $ ErrorOccurred s
                        otherwise -> return Undefined
                Logicalneg -> case value of
                        (VBoolean b) -> if b    then return (VBoolean False)
                                                else return (VBoolean True)
                        ErrorOccurred s -> return $ ErrorOccurred s
                        otherwise -> return Undefined

addArgumentsToHeadOfEnv :: Env -> [Ident] -> [Value] -> Env
addArgumentsToHeadOfEnv env [] [] = env
addArgumentsToHeadOfEnv env _ [] = error "Not enough arguments passed to function" --TODO: error msg!!!
addArgumentsToHeadOfEnv env [] _ = error "Too much arguments passed to funciton" --TODO: error msg!!!
addArgumentsToHeadOfEnv env (id:idents) (arg:args) =
        case (addVariable env id arg) of
                Ok env' -> addArgumentsToHeadOfEnv env' idents args
                Bad str -> error "Interpreter error, cannot add variable while adding arguments to environment" --TODO: error msg!!!

evaluateArgs :: [Exp] -> State Env [Value]
evaluateArgs [] = return []
evaluateArgs (exp:r) = do
        val <- interpretExp exp
        rest <- evaluateArgs r
        return (val : rest)

expFunk :: Ident -> [Exp] -> State Env Value
expFunk id args = do
        env <- get
        case (lookupFunction env id) of
                Ok (arguments_idents, list_of_stmOrDec) -> do
                        ne <- return $ nextEnv env
                        args_values <- evaluateArgs args
                        fixed_env <- return $ addArgumentsToHeadOfEnv ne arguments_idents args_values 
                        put fixed_env
                        -- now do the list of statements
                        stm_value <- interpretStm (ListS list_of_stmOrDec)
                        value <- case stm_value of
                                RETURN v -> return v
                                RETURNE -> return Undefined
                                _ -> return $ ErrorOccurred "function should has return statement" --TODO: fun hasnt return
                        -- delete head of env
                        after_env <- get
                        popped <- return $ popEnv after_env
                        put popped
                        return value
                Bad str -> return $ ErrorOccurred str 
                

expVar :: Ident -> State Env Value
expVar id = do
        env <- get
        value <- case (lookupVariable env id) of
                Ok value -> return value
                Bad str  -> return $ ErrorOccurred str
        put env
        return value
        

expConst :: Constant -> State Env Value
expConst c = do
        case c of
                Efloat c -> return (VFloat c)
                Ecfloat c -> return (VFloat 0.0) --TODO: check, why it is working without this line
                Ebool b -> do
                        boo <- do 
                                if (b == (Boolean "true"))
                                        then return True
                                        else return False
                        return (VBoolean boo)
                Eint i -> return (VInt i)
