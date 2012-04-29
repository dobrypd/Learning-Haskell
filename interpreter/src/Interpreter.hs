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
interpretProgram prog = return $ Undefined

interpretStm :: Stm -> State Env Value
interpretStm stm = return (VInt 2)

interpretExp :: Exp -> State Env Value
interpretExp exp = case exp of
        Ecomma e1 e2 -> expComma e1 e2
        Eassign e1 e2 -> expAssign e1 e2
        Econdition e1 e2 e3 -> expCondition e1 e2 e3
        Elor e1 e2 -> expLor e1 e2
        
        Econst c -> expConst c
        otherwise -> return $ Undefined

expComma :: Exp -> Exp -> State Env Value
expComma e1 e2 = do
        val1 <- interpretExp e1
        val2 <- interpretExp e2        
        return val2

expAssign :: Exp -> Exp -> State Env Value
expAssign e1 e2 = do
        ident <- interpretExp e1
        value <- case ident of
                VIdent i -> do 
                        value <- interpretExp e2
                        env <- get
                        env' <- do
                                case (setVariable env i value) of
                                        Bad err -> error err --TODO: error messages
                                        Ok  env'' -> return env''
                        put env'
                        return value
                otherwise -> error $ (show ident) ++ " should be an ident" --TODO: error messages
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
                otherwise -> error $ (show value) ++ " should be an int, float or bool" --TODO: error messages
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

expLor :: Exp -> Exp -> State Env Value                    
expLor e1 e2 = do
        bb1 <- expBool e1
        case bb1 of
                VBoolean b1 -> do
                        bb2 <- expBool e2  
                        case bb2 of
                                VBoolean b2 -> return $ VBoolean (b1 || b2)
                                otherwise -> error "Error inside interpreter in function expBool and expLor"
                otherwise -> error "Error inside interpreter in function expBool and expLor"