-- Module Environment
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Environment where

import Control.Monad.State
import qualified Data.Map as M

import AbsKappaGrammar
import PrintKappaGrammar
import ErrM

data Value = VInt Integer | VFloat Double | VBoolean Bool | VStruct [(Ident, Value)] | Undefined | ErrorOccurred String | VIdent Ident

instance Show Value where
        show (VInt i)       = show i
        show (VFloat f)     = show f
        show (VBoolean b)   = show b
        show (VStruct s)    = show s 
        show Undefined      = "undefined"
        show (ErrorOccurred s)  = show s

instance Eq Value where
        (VInt v1) == (VInt v2) = v1 == v2
        (VFloat v1) == (VFloat v2) = v1 == v2
        (VBoolean v1) == (VBoolean v2) = v1 == v2
        (VStruct v1) == (VStruct v2) = v1 == v2
        (VIdent v1) == (VIdent v2) = v1 == v2
        --TODO: inne
        
instance Ord Value where
        (<=) (VInt x) (VInt y) = x <= y
        (<=) (VFloat x) (VFloat y) = x <= y
        (<=) (VBoolean x) (VBoolean y) = True
        --TODO: inne
        
        

-- Env is tuple of Environment for variables, global funcitons and namespaces
type Env = [(M.Map Ident Value, M.Map Ident Function_def, M.Map Ident Namespace)] 
emptyEnv = [(M.empty, M.empty, M.empty)]

stateFromEnv :: Env -> State Env Value
stateFromEnv env = do
        put env
        return Undefined



addVariable :: Env -> Ident -> Value -> Err Env
addVariable ((scope, f, n):rest) id value = 
    case M.lookup id scope of
      Nothing -> return ((M.insert id value scope, f, n):rest)
      Just _  -> Bad ("Variable " ++ printTree id ++ " already declared.")

addFunction :: Env -> Ident -> Function_def -> Err Env
addFunction ((v, scope, n):rest) id value = 
    case M.lookup id scope of
      Nothing -> return ((v, M.insert id value scope, n):rest)
      Just _  -> Bad ("Function " ++ printTree id ++ " already declared.")
      
addNamespace :: Env -> Ident -> Namespace -> Err Env
addNamespace ((v, f, scope):rest) id value = 
    case M.lookup id scope of
      Nothing -> return ((v, f, M.insert id value scope):rest)
      Just _  -> Bad ("Namespace " ++ printTree id ++ " already declared.")

      
setVariable :: Env -> Ident -> Value -> Err Env
setVariable [] id _ = fail $ "Unknown variable " ++ printTree id ++ "."
setVariable ((scope, f, n):rest) id val 
        | M.member id scope = return (((M.update (\v -> Just val) id scope), f, n):rest)  
        | otherwise = do
                globalEnv <- return $ setVariable rest id val
                case globalEnv of
                        Bad err -> Bad err
                        Ok env -> return $ (scope, f, n):env

  
lookupVariable :: Env -> Ident -> Err Value
lookupVariable [] id = fail ("Variable " ++ printTree id ++ " does not exist!")
lookupVariable ((scope, f, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupVariable rest id
                Just v -> return v

lookupFunction :: Env -> Ident -> Err Value
lookupFunction [] id = fail ("Variable " ++ printTree id ++ " does not exist!")
lookupFunction ((scope, f, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupVariable rest id
                Just v -> return v 