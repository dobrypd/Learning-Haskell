-- Module Interpreter
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)
{-# OPTIONS_GHC -XDeriveDataTypeable #-} 

module Interpreter where

import Control.Monad.State
import Control.Exception
import Data.Typeable
import qualified Data.Map as M

import Environment

import AbsKappaGrammar
import PrintKappaGrammar
import ParKappaGrammar
import ErrM


data MyException = ErrorStr String | ErrorNo Integer
        deriving Typeable
instance Show MyException where
        show (ErrorStr s) = show s
        show (ErrorNo n) = show ("Error number: " ++ show(n))
instance Exception MyException


-- GLOBALS AND PROGRAM INTERPRETATION
-- entrypoint program:
interpretProgram :: Program -> State Env Value
interpretProgram prog = case prog of
        Progr [] -> interpretExp (Efunk (Ident "main") ([]))
        Progr (d:rest) -> do
                interpretDeclaration d
                interpretProgram (Progr rest)  

-- declarations, 3 kinds: functions, global variables and namespaces
interpretDeclaration :: DGlobalDeclaration -> State Env Value
interpretDeclaration globalDec = case globalDec of
        DFunction f_def -> case f_def of
                NewFunction ts declarator stmtsAndDecsList -> newFunction ts declarator stmtsAndDecsList
        DGlobal d -> decDeclare d
        DNamespace ns -> case ns of
                NSDeclarator ident listOfFunctionDef -> newNamespace ident listOfFunctionDef 

-- new function declaration and utils
-- declarator is wrapping ident, i want only ident
nameIdentFromDeclarator :: Declarator -> Ident
nameIdentFromDeclarator declarator = case declarator of
        VarName id -> id
        _ -> throw $ ErrorStr ("Parser error, should be VarName in function name declarator: " ++ printTree(declarator))

-- paprameter is wraping ident, i want only ident
identFromParameter :: Parameter -> Ident
identFromParameter (SingleParam _ declarator) = nameIdentFromDeclarator declarator

-- add new function to head of environment
newFunction :: Type_specifier -> Declarator -> [StmOrDec] -> State Env Value
newFunction ts dec stmDecList = do
        case dec of
                -- in new function I want only FunctionName Declarator
                FunctionName declarator parameters -> do
                        -- parameters is list of SingleParam Type_specifier Declarator. 
                        -- Both Declarators should be VarName Ident
                        env <- get
                        env' <- do
                                -- adding new function to environment
                                let idents = map identFromParameter parameters -- argunents idents
                                    fun_ident = nameIdentFromDeclarator declarator in -- function name
                                        case (addFunction env fun_ident (idents, stmDecList)) of
                                                Bad err -> throw $ ErrorStr err
                                                Ok  env'' -> return env''
                        put env'
                        return Undefined
                -- otherwise it means that new function hasnt got list of parameter, or even '()'
                _ -> throw $ ErrorStr "New function, should has (...) - list of arguments"

-- namespace declaration, and utils
-- Function_def is wrapping identifier, arguments, and the body of function
funDefToFuncs :: Function_def -> (Ident, ([Ident], [StmOrDec]))
funDefToFuncs functionDef = case functionDef of
        -- it works quite simmilar to newFunction, 
        --      but hire I adding function to namespace part of evironment tuple
        NewFunction ts dec stmDecList ->
                case dec of
                        FunctionName declarator parameters -> 
                                let 
                                        idents = map identFromParameter parameters
                                        fun_ident = nameIdentFromDeclarator declarator
                                in
                                        (fun_ident, (idents, stmDecList))
                        _ -> throw $ ErrorStr "New function, should has (...) - list of arguments"
                
-- adding new namespace to environment
newNamespace :: Ident -> [Function_def] -> State Env Value
newNamespace id functionDefs = do
        functionsList <- return $ map funDefToFuncs functionDefs 
        namespace <- return $ M.fromList functionsList
        env <- get
        env' <- do case (addNamespace env id namespace) of
                        Bad err -> throw $ ErrorStr err
                        Ok env'' -> return env''
        put env'
        return Undefined  
        
        
-- evaluate initialization, it returns list in case of 'int a, b, c=2, d=5'
identValueFromDecEnv :: Dec -> Env -> [(Ident, Value)]
identValueFromDecEnv dec env = case dec of
        Declarators ts [] -> []
        Declarators ts (init_decltr:list_init_decltr) ->
                let 
                        ident = case init_decltr of
                                OnlyDecl d -> case d of
                                        VarName ident -> ident
                                        _ -> throw $ ErrorStr ("Functions should be declared only globally or in namespace")
                                InitDecl d initializer -> case d of
                                        VarName ident -> ident
                                        _ -> throw $ ErrorStr ("Functions should be declared only globally or in namespace")
                        value = case ts of
                                Type_specifier_int -> case init_decltr of
                                        OnlyDecl d -> (VInt 0)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> evalState (interpretExp e) env
                                                _ -> throw $ ErrorStr ("Single int value cannot be initialized by list initialization")
                                        
                                Type_specifier_float -> case init_decltr of
                                        OnlyDecl d -> (VFloat 0.0)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> evalState (interpretExp e) env
                                                _ -> throw $ ErrorStr ("Single float value cannot be initialized by list initialization")
                                        
                                Type_specifier_bool -> case init_decltr of
                                        OnlyDecl d -> (VBoolean False)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> evalState (interpretExp e) env
                                                _ -> throw $ ErrorStr ("Single boolean value cannot be initialized by list initialization")
                                                
                                Type_specifierStruct_spec structSpec -> case structSpec of
                                        Unnamed listOfStrDec -> (VStruct $ evalStructure M.empty env listOfStrDec)
                in 
                        (ident, value):(identValueFromDecEnv (Declarators ts list_init_decltr) env)

-- add all variables from list to environment
addToEnv :: Env -> [(Ident, Value)] -> Env
addToEnv e [] = e
addToEnv e ((id, val):t) = case (addVariable (addToEnv e t) id val) of
        Ok e -> e
        Bad s -> throw $ ErrorStr s

-- declare variable/variables
decDeclare :: Dec -> State Env Value    
decDeclare dec = do
        env <- get
        list_ident_values <- return $ identValueFromDecEnv dec env
        env' <- return $ addToEnv env list_ident_values
        put env'
        return Undefined

-- add single variable to structure
addVarToStr :: (M.Map Ident Value) -> Ident -> Value -> (M.Map Ident Value)
addVarToStr s id value = M.insert id value s

-- add list of variables to structure
addToStructure :: (M.Map Ident Value) -> [(Ident, Value)] -> (M.Map Ident Value)
addToStructure s [] = s
addToStructure s ((id, val):t) = addVarToStr (addToStructure s t) id val

-- evaluate structure, (used in time of struct declaration)
evalStructure :: (M.Map Ident Value) -> Env -> [Dec] -> (M.Map Ident Value)
evalStructure s _ [] = s
evalStructure s env (d:rest) = addToStructure (evalStructure s env rest) (identValueFromDecEnv d env)






-- STATEMENTS

-- type of program flow, what should be done after a statement
data StmVal = GO | BREAK | CONTINUE | RETURN Value | RETURNE

-- all statements
interpretStm :: Stm -> State Env StmVal
interpretStm stm = case stm of
        ListS list -> stmList list
        DecS e_dec -> case e_dec of
                Dempty -> return GO
                Ddec d -> do
                        decDeclare d
                        return GO
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
                

-- list of statements (or declarations)
stmList :: [StmOrDec] -> State Env StmVal
stmList [] = return GO
stmList (stm:rest) = do
        ret_value <- case stm of
                SDec d -> do 
                        value <- decDeclare d -- do nothing with value
                        return GO -- and always go to next
                SStm s -> do
                        value <- interpretStm s
                        return value
        case ret_value of
                GO -> do
                        stmList rest -- do the next statement only if GO
                otherwise -> return ret_value -- otherwise return value


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
                _ -> throw $ ErrorStr "Expression in if statement should returns one of int, float or bool"

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
                _ -> throw $ ErrorStr "in while expression should be int, float, or boolean"
        case stm_val of
                GO -> stmWhile e s 
                CONTINUE -> stmWhile e s
                BREAK -> return GO --break only single loop
                _ -> return stm_val -- RETURN V, RETURNE


-- statement for is very simple, just change AST to work like while
stmFor :: DecStm -> ExpStm -> Exp -> Stm -> State Env StmVal
stmFor dec exp1 exp2 s = do
        case dec of
                Dempty -> case exp1 of
                        Sempty ->
                                interpretStm (ListS [SStm (IterS (SiterWhile (Econst (Eint (1))) (ListS [SStm s, SStm (ExprS (Sexpr exp2))])))])
                        Sexpr ee ->
                                interpretStm (ListS [SStm (IterS (SiterWhile (ee) (ListS [SStm s, SStm (ExprS (Sexpr exp2))])))])
                Ddec d -> case exp1 of
                        Sempty ->
                                interpretStm (ListS [SDec d, SStm (IterS (SiterWhile (Econst (Eint (1))) (ListS [SStm s, SStm (ExprS (Sexpr exp2))])))])
                        Sexpr ee ->
                                interpretStm (ListS [SDec d, SStm (IterS (SiterWhile (ee) (ListS [SStm s, SStm (ExprS (Sexpr exp2))])))])

-- jump statements
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
-- all expressions
interpretExp :: Exp -> State Env Value
interpretExp exp = case exp of
        Ecomma e1 e2 -> expComma e1 e2
        Eassign idents e2 -> expAssign idents e2
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
        EfunkNS idNs idF args -> expFunkNs idNs idF args 
        Epostinc ident -> expPostinc ident
        Epostdec ident -> expPostdec ident
        Evar ids -> expVar ids
        Econst c -> expConst c




expComma :: Exp -> Exp -> State Env Value
expComma e1 e2 = do
        val1 <- interpretExp e1
        val2 <- interpretExp e2        
        return val2

-- assign is quite sophisticated, because if it is single Ident - it search it in environment
-- but if list of idents has more than one item, then it means that will be assigned field in structure
-- or field in structure in structure ...
assignInStructure :: (M.Map Ident Value) -> [Ident] -> Value -> (M.Map Ident Value)
assignInStructure s (last:[]) value
        | M.member last s = M.update (\v -> Just value) last s
        | otherwise = throw $ ErrorStr ("Identifier " ++ show(last) ++ " not found in structure.")
assignInStructure s (nextStr:rest) value = 
        case M.lookup nextStr s of
                Nothing -> throw $ ErrorStr ("Structure identifier " ++ show(nextStr) ++ " not found in structure." ++ show(s))
                Just v -> case v of
                        VStruct nextStructMap -> 
                                M.update (\v -> Just (VStruct $ assignInStructure nextStructMap rest value)) nextStr s
                        _ -> throw $ ErrorStr ("Identifier " ++ show(nextStr) ++ " should be structure.")

expAssign :: [Ident] -> Exp -> State Env Value
expAssign (ident:[]) e2 = do
        value <- interpretExp e2
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> throw $ ErrorStr err
                        Ok  env'' -> return env''
        put env'
        return value
expAssign (structId:restIds) e2 = do
        value <- interpretExp e2
        strVal <- expVar [structId]
        env <- get
        newStruct <- case strVal of
                VStruct structMap -> return $ assignInStructure structMap restIds value
                _ -> throw $ ErrorStr (show(structId) ++ " should be structure.")
        env' <- do
                case (setVariable env structId (VStruct newStruct)) of
                        Bad err -> throw $ ErrorStr err
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
                otherwise -> throw $ ErrorStr ((show value) ++ " should be an int, float or bool")
        return value2
        
expBool :: Exp -> State Env Value
expBool e = do
        value <- interpretExp e
        bol <- return $ case value of
                VInt i -> i /= 0
                VFloat d -> d /= 0.0
                VBoolean b -> b
                otherwise -> throw $ ErrorStr ((show value) ++ " should be an int, float or bool")
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
                                otherwise -> throw $ ErrorStr "First argument in or should be bool"
                otherwise -> throw $ ErrorStr "Second argument in or should be bool"
                
expLand :: Exp -> Exp -> State Env Value                    
expLand e1 e2 = do
        bb1 <- expBool e1
        case bb1 of
                VBoolean b1 -> do
                        bb2 <- expBool e2  
                        case bb2 of
                                VBoolean b2 -> return $ VBoolean (b1 && b2)
                                otherwise -> throw $ ErrorStr "Second argument of and should be bool"
                otherwise -> throw $ ErrorStr "First argument of and should be bool"
           
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
        case ts of --this one which I can convert in simple way
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
                otherwise -> return Undefined
                        
                        
expPreinc :: Ident -> State Env Value
expPreinc ident = do
        value <- interpretExp (Eplus (Evar [ident]) (Econst (Eint 1)))
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> throw $ ErrorStr err
                        Ok  env'' -> return env''
        put env'
        return value
                
expPredec :: Ident -> State Env Value
expPredec ident = do
        value <- interpretExp (Eminus (Evar [ident]) (Econst (Eint 1)))
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> throw $ ErrorStr err
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
                        ErrorOccurred s -> throw $ ErrorStr s
                        otherwise -> return Undefined
                Logicalneg -> case value of
                        (VBoolean b) -> if b    then return (VBoolean False)
                                                else return (VBoolean True)
                        ErrorOccurred s -> throw $ ErrorStr s
                        otherwise -> return Undefined

-- function call utils
addArgumentsToHeadOfEnv :: Env -> [Ident] -> [Value] -> Env
addArgumentsToHeadOfEnv env [] [] = env
addArgumentsToHeadOfEnv env _ [] = throw $ ErrorStr "Not enough arguments passed to function"
addArgumentsToHeadOfEnv env [] _ = throw $ ErrorStr "Too much arguments passed to funciton"
addArgumentsToHeadOfEnv env (id:idents) (arg:args) =
        case (addVariable env id arg) of
                Ok env' -> addArgumentsToHeadOfEnv env' idents args
                Bad str -> throw $ ErrorStr "Interpreter error, cannot add variable while adding arguments to environment"

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
                                _ -> throw $ ErrorStr "Function should has return statement"
                        -- delete head of env
                        after_env <- get
                        popped <- return $ popEnv after_env
                        put popped
                        return value
                Bad str -> throw $ ErrorStr str
 

expFunkNs :: Ident -> Ident -> [Exp] -> State Env Value
expFunkNs idNs idF args = do
        env <- get
        case (lookupNamespace env idNs) of
                Ok functionsMap -> 
                        case M.lookup idF functionsMap of
                                Nothing -> throw $ ErrorStr ("Namespace " ++ printTree(idNs) ++ " hasnt got function " ++ printTree(idF))
                                Just (arguments_idents, list_of_stmOrDec) -> do
                                        ne <- return $ nextEnv env
                                        args_values <- evaluateArgs args
                                        fixed_env <- return $ addArgumentsToHeadOfEnv ne arguments_idents args_values 
                                        put fixed_env
                                        -- now do the list of statements
                                        stm_value <- interpretStm (ListS list_of_stmOrDec)
                                        value <- case stm_value of
                                                RETURN v -> return v
                                                RETURNE -> return Undefined
                                                _ -> throw $ ErrorStr "Function should has return statement"
                                        -- delete head of env
                                        after_env <- get
                                        popped <- return $ popEnv after_env
                                        put popped
                                        return value
                Bad str -> throw $ ErrorStr str


expPostinc :: Ident -> State Env Value
expPostinc ident = do
        env <- get
        preVal <- case (lookupVariable env ident) of
                Bad err -> throw $ ErrorStr err
                Ok value -> return value
        value <- interpretExp (Eplus (Evar [ident]) (Econst (Eint 1)))
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> throw $ ErrorStr err
                        Ok  env'' -> return env''
        put env'
        return preVal
                
expPostdec :: Ident -> State Env Value
expPostdec ident = do
        env <- get
        preVal <- case (lookupVariable env ident) of
                Bad err -> throw $ ErrorStr err
                Ok value -> return value
        value <- interpretExp (Eminus (Evar [ident]) (Econst (Eint 1)))
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> throw $ ErrorStr err
                        Ok  env'' -> return env''
        put env'
        return preVal

-- expVar utils, find in structures
varInStructure :: (M.Map Ident Value) -> [Ident] -> Value
varInStructure s (last:[]) =
        case M.lookup last s of
                Nothing -> throw $ ErrorStr ("Identifier " ++ show(last) ++ " not found in structure.")
                Just v -> v
varInStructure s (nextStr:rest) = 
        case M.lookup nextStr s of
                Nothing -> throw $ ErrorStr ("Structure identifier " ++ show(nextStr) ++ " not found in structure.")
                Just v -> case v of
                        VStruct nextStructMap -> varInStructure nextStructMap rest
                        _ -> throw $ ErrorStr ("Identifier " ++ show(nextStr) ++ " should be structure.")

expVar :: [Ident] -> State Env Value
expVar (id:[]) = do
        env <- get
        value <- case (lookupVariable env id) of
                Ok value -> return value
                Bad str  -> throw $ ErrorStr str
        put env
        return value
expVar (structId:restIds) = do
        strVal <- expVar [structId]
        case strVal of
                VStruct structMap -> return $ varInStructure structMap restIds
                _ -> throw $ ErrorStr (show(structId) ++ " should be structure.")



expConst :: Constant -> State Env Value
expConst c = do
        case c of
                Efloat c -> return (VFloat c)
                Ecfloat c -> return (VFloat 0.0)
                Ebool b -> do
                        boo <- do 
                                if (b == (Boolean "true"))
                                        then return True
                                        else return False
                        return (VBoolean boo)
                Eint i -> return (VInt i)
