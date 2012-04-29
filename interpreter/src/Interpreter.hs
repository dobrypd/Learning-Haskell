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


interpretProgram :: Program -> State Env Value
interpretProgram prog = case prog of 
        Progr [] -> interpretExp (Efunk (Ident "main") ([]))
        Progr (d:rest) -> do
                interpretDeclaration d
                interpretProgram (Progr rest)  
                 
        
interpretDeclaration :: DGlobalDeclaration -> State Env Value
interpretDeclaration globalDec = case globalDec of
        DFunction f_def -> decFunction f_def
        DGlobal d -> decGlobal d
        DNamespace ns -> decNs ns

decFunction :: Function_def -> State Env Value
decFunction f_def = 
        return $ ErrorOccurred "unimplemented yed, function declaration"

decGlobal :: Dec -> State Env Value
decGlobal d = case d of
        JustType ts -> return $ ErrorOccurred "Warning, does nothing"
        Declarators ts init_decltrs -> decDeclare ts init_decltrs
        
decDeclare :: Type_specifier -> [Init_declarator] -> State Env Value
decDeclare ts [] = return Undefined        
decDeclare ts (init_decltr:rest_init) = do
        case ts of
                Type_specifier_int -> do
                        env <- get
                        ident <- do
                                case init_decltr of
                                        OnlyDecl d -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                                        InitDecl d initializer -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                        init_val <-
                                case init_decltr of
                                        OnlyDecl d -> return (VInt 0)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> (interpretExp e)
                                                --InitList listOfInitializers
                        env' <- do
                                case (setVariable env ident init_val) of
                                        Bad err -> error err --TODO: error messages
                                        Ok  env'' -> return env''
                        put env'
                        decDeclare ts rest_init
                        return init_val
                        
                Type_specifier_float -> do
                        env <- get
                        ident <- do
                                case init_decltr of
                                        OnlyDecl d -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                                        InitDecl d initializer -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                        init_val <-
                                case init_decltr of
                                        OnlyDecl d -> return (VFloat 0.0)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> (interpretExp e)
                                                --InitList listOfInitializers
                        env' <- do
                                case (setVariable env ident init_val) of
                                        Bad err -> error err --TODO: error messages
                                        Ok  env'' -> return env''
                        put env'
                        decDeclare ts rest_init
                        return init_val
                        
                Type_specifier_bool -> do
                        env <- get
                        ident <- do
                                case init_decltr of
                                        OnlyDecl d -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                                        InitDecl d initializer -> case d of
                                                VarName ident -> return ident
                                                --FucntionName d parameters ->
                        init_val <-
                                case init_decltr of
                                        OnlyDecl d -> return (VBoolean False)
                                        InitDecl d initializer -> case initializer of
                                                InitExpr e -> (interpretExp e)
                                                --InitList listOfInitializers
                        env' <- do
                                case (setVariable env ident init_val) of
                                        Bad err -> error err --TODO: error messages
                                        Ok  env'' -> return env''
                        put env'
                        decDeclare ts rest_init
                        return init_val
                        
                -- TODO: (Type_specifierStruct_spec structSpec) -> do
        

decNs :: Namespace -> State Env Value
decNs d = return $ ErrorOccurred "czesc"

interpretStm :: Stm -> State Env Value
interpretStm stm = return $ ErrorOccurred "statemetns unimplemented"





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
        
        --Efunk id args -> expFunk id args
        
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
                        Bad err -> error err --TODO: error messages
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
                otherwise -> error $ (show value) ++ " should be an int, float or bool" --TODO: error messages
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
                        Bad err -> error err --TODO: error messages
                        Ok  env'' -> return env''
        put env'
        return value
                
expPredec :: Ident -> State Env Value
expPredec ident = do
        value <- interpretExp (Eminus (Evar ident) (Econst (Eint 1)))
        env <- get
        env' <- do
                case (setVariable env ident value) of
                        Bad err -> error err --TODO: error messages
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


--expFunk :: Exp -> [Exp] -> State Env Value
--expFunk id args = do
                

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