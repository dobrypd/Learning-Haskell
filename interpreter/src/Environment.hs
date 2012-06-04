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

-- uncomment debug - change in this file '--DBG' to '' and comment every line belove --DBG
--DBGimport Debug.Trace


data Value = VInt Integer | VFloat Double | VBoolean Bool | VStruct (M.Map Ident Value) | Undefined | ErrorOccurred String

instance Show Value where
        show (VInt i)       = show i
        show (VFloat f)     = show f
        show (VBoolean b)   = show b
        show (VStruct s)    = show s
        show Undefined      = "Undefined"
        show (ErrorOccurred s)  = show s

instance Eq Value where
        (VInt v1) == (VInt v2) = v1 == v2
        (VFloat v1) == (VFloat v2) = v1 == v2
        (VBoolean v1) == (VBoolean v2) = v1 == v2
        (VStruct v1) == (VStruct v2) = v1 == v2
        -- other -> type error
        
instance Ord Value where
        (<=) (VInt x) (VInt y) = x <= y
        (<=) (VFloat x) (VFloat y) = x <= y
        (<=) (VBoolean x) (VBoolean y) = True
        -- other -> type error
        
        


-- Environment is list of tuples, single tuple has Environment for variables, global funcitons and namespaces
-- on the head of list is maximum local scope, on the end has globals
type Env = [(M.Map Ident Value, M.Map Ident ([Ident], [StmOrDec]), M.Map Ident (M.Map Ident ([Ident], [StmOrDec])))] 


emptyEnv = [(M.empty, M.empty, M.empty)]

-- in function call, new scope
nextEnv :: Env -> Env
nextEnv env = let (e:_) = emptyEnv in e : env

-- when scope ends
popEnv :: Env -> Env
popEnv (_:e) = e


-- ADD TO ENV
addVariable :: Env -> Ident -> Value -> Err Env
addVariable ((scope, f, n):rest) id value =
    --DBGtrace ("adding new variable : " ++ show(id) ++ " val: " ++ (show(value))) $ case M.lookup id scope of
    case M.lookup id scope of
      Nothing -> return ((M.insert id value scope, f, n):rest)
      Just _  -> Bad ("Variable " ++ printTree id ++ " already declared.")

addFunction :: Env -> Ident -> ([Ident], [StmOrDec]) -> Err Env
addFunction ((v, scope, n):rest) id value = 
    --DBGtrace ("adding new function : " ++ show (id) ++ " def: " ++ (show(value))) $ case M.lookup id scope of
    case M.lookup id scope of
      Nothing -> return ((v, M.insert id value scope, n):rest)
      Just _  -> Bad ("Function " ++ printTree id ++ " already declared.")
      
addNamespace :: Env -> Ident -> M.Map Ident ([Ident], [StmOrDec]) -> Err Env
addNamespace ((v, f, scope):rest) id value = 
    --DBGtrace ("adding new namespace : " ++ show (id) ++ " def: " ++ (show(value))) $ case M.lookup id scope of
    case M.lookup id scope of
      Nothing -> return ((v, f, M.insert id value scope):rest)
      Just _  -> Bad ("Namespace " ++ printTree id ++ " already declared.")


-- SET INSIDE ENV
setVariable :: Env -> Ident -> Value -> Err Env
setVariable [] id _ = 
        --DBGtrace ("valiable not found :(") $ fail $ "Unknown variable " ++ printTree id ++ "."
        fail $ "Unknown variable " ++ printTree id ++ "."
setVariable ((scope, f, n):rest) id val
        --DBG| M.member id scope = trace ("found variable! hurray, setting to: " ++ show(val)) $ return (((M.update (\v -> Just val) id scope), f, n):rest) 
        | M.member id scope = return (((M.update (\v -> Just val) id scope), f, n):rest)
        | otherwise = do
                --DBGglobalEnv <- trace ("Searching for variable: " ++ show(id)) $ (return $ setVariable rest id val)
                globalEnv <- (return $ setVariable rest id val)
                case globalEnv of
                        Bad err -> Bad err
                        Ok env -> return $ (scope, f, n):env


-- LOOKUP IN ENV  
lookupVariable :: Env -> Ident -> Err Value
lookupVariable [] id = 
        --DBGtrace ("variable lookup failed") $ fail ("Variable " ++ printTree id ++ " does not exist!")
        fail ("Variable " ++ printTree id ++ " does not exist!")
lookupVariable ((scope, f, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupVariable rest id
                --DBGJust v -> trace("variable " ++ show(id) ++ " found") $ return v
                Just v -> return v

lookupFunction :: Env -> Ident -> Err ([Ident], [StmOrDec])
lookupFunction [] id = 
        --DBGtrace ("failed to lookup for function") $ fail ("Function " ++ printTree id ++ " does not exist!")
        fail ("Function " ++ printTree id ++ " does not exist!")
lookupFunction ((v, scope, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupFunction rest id
                --DBGJust v -> trace ("Found function: " ++ show(id) ) $ return v
                Just v -> return v

lookupNamespace :: Env -> Ident -> Err ((M.Map Ident ([Ident], [StmOrDec])))
lookupNamespace [] id =
        --DBGtrace ("failed to lookup for namespace") $ fail ("Namespace " ++ printTree id ++ " does not exist!")
        fail ("Namespace " ++ printTree id ++ " does not exist!")
lookupNamespace ((v, f, scope):rest) id =
        case M.lookup id scope of
                Nothing -> lookupNamespace rest id
                --DBGJust v -> trace ("Found namespace: " ++ show(id) ) $ return v
                Just v -> return v