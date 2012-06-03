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

import Debug.Trace --DEBUG

data Value = VInt Integer | VFloat Double | VBoolean Bool | VStruct (M.Map Ident Value) | Undefined | ErrorOccurred String | VIdent Ident

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
        (VIdent v1) == (VIdent v2) = v1 == v2
        --TODO: inne
        
instance Ord Value where
        (<=) (VInt x) (VInt y) = x <= y
        (<=) (VFloat x) (VFloat y) = x <= y
        (<=) (VBoolean x) (VBoolean y) = True
        --TODO: inne
        
        

-- Env is tuple of Environment for variables, global funcitons and namespaces
-- TODO: typecheck can be done by change Ident to tuple (Type, Ident)
type Env = [(M.Map Ident Value, M.Map Ident ([Ident], [StmOrDec]), M.Map Ident (M.Map Ident ([Ident], [StmOrDec])))] 
emptyEnv = [(M.empty, M.empty, M.empty)]



nextEnv :: Env -> Env
nextEnv env = let (e:_) = emptyEnv in e : env

popEnv :: Env -> Env
popEnv (_:e) = e

--stateFromEnv :: Env -> State Env Value
--stateFromEnv env = do
        --put env
        --return Undefined



--TODO: check if value is proper value or error message (if defined)
addVariable :: Env -> Ident -> Value -> Err Env
addVariable ((scope, f, n):rest) id value =
    trace ("adding new variable : " ++ show(id) ++ " val: " ++ (show(value))) $ case M.lookup id scope of --DEBUG
      Nothing -> return ((M.insert id value scope, f, n):rest)
      Just _  -> Bad ("Variable " ++ printTree id ++ " already declared.")

--TODO: change function environment ident -> [StmOrDec]
addFunction :: Env -> Ident -> ([Ident], [StmOrDec]) -> Err Env
addFunction ((v, scope, n):rest) id value = 
    trace ("adding new function : " ++ show (id) ++ " def: " ++ (show(value))) $ case M.lookup id scope of --DEBUG
      Nothing -> return ((v, M.insert id value scope, n):rest)
      Just _  -> Bad ("Function " ++ printTree id ++ " already declared.")
      
addNamespace :: Env -> Ident -> M.Map Ident ([Ident], [StmOrDec]) -> Err Env
addNamespace ((v, f, scope):rest) id value = 
    trace ("adding new namespace : " ++ show (id) ++ " def: " ++ (show(value))) $ case M.lookup id scope of --DEBUG
      Nothing -> return ((v, f, M.insert id value scope):rest)
      Just _  -> Bad ("Namespace " ++ printTree id ++ " already declared.")

      
setVariable :: Env -> Ident -> Value -> Err Env
setVariable [] id _ = trace ("valiable not found :(") $ fail $ "Unknown variable " ++ printTree id ++ "." --TODO: this fail do not retuned --DEBUG
setVariable ((scope, f, n):rest) id val
        | M.member id scope = trace ("found variable! hurray, setting to: " ++ show(val)) $ return (((M.update (\v -> Just val) id scope), f, n):rest) --DEBUG  
        | otherwise = do
                globalEnv <- trace ("Searching for variable: " ++ show(id)) $ (return $ setVariable rest id val) --DEBUG
                case globalEnv of
                        Bad err -> Bad err
                        Ok env -> return $ (scope, f, n):env

  
lookupVariable :: Env -> Ident -> Err Value
lookupVariable [] id = trace ("variable lookup failed") $ fail ("Variable " ++ printTree id ++ " does not exist!") --DEBUG
lookupVariable ((scope, f, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupVariable rest id
                Just v -> trace("variable " ++ show(id) ++ " found") $ return v --DEBUG

lookupFunction :: Env -> Ident -> Err ([Ident], [StmOrDec])
lookupFunction [] id = trace ("failed to lookup for function") $ fail ("Function " ++ printTree id ++ " does not exist!") --DEBUG
lookupFunction ((v, scope, n):rest) id =
        case M.lookup id scope of
                Nothing -> lookupFunction rest id
                Just v -> trace ("Found function: " ++ show(id) ) $ return v --DEBUG
