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

data Value = VInt Integer | VFloat Double | VBoolean Bool | VStruct [(Ident, Value)] | Undefined | ErrorOccurred

instance Show Value where
    show (VInt i)       = show i
    show (VFloat f)     = show f
    show (VBoolean b)   = show b
    show (VStruct s)    = show s 
    show Undefined      = "undefined"
    show ErrorOccurred  = "error"

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
      Just _  -> fail ("Variable " ++ printTree id ++ " already declared.")

-- add function to environment, 
-- if namespace is not defined, add it to global funcitons
-- otherwise add to named namespace
addFunction :: Env -> Ident -> (Maybe Ident) -> Function_def -> Err Env
addFunction ((v, scope, n):rest) id Nothing value = 
    case M.lookup id scope of
      Nothing -> return ((v, M.insert id value scope, n):rest)
      Just _  -> fail ("Function " ++ printTree id ++ " already declared.")
addFunction ((v, f, scope):rest) id (Just ns) value = 
    case M.lookup ns scope of
      Nothing -> fail ("Namespace " ++ printTree ns ++ " does not exist.")
      Just (NSDeclarator _ f) -> case lookup (NewFunction _ (FunctionName (VarName id) _) _) f of
                Nothing -> return ((v, f, M.update ns (NSDeclarator ns (value:f) scope):rest))
                Just _ -> fail ("Namespace " ++ printTree ns ++ " already has function " ++ id ".")
      
addNamespace :: Env -> Ident -> Namespace -> Err Env
addNamespace ((v, f, scope):rest) id value = 
    case M.lookup id scope of
      Nothing -> return ((v, f, M.insert id value scope):rest)
      Just _  -> fail ("Namespace " ++ printTree id ++ " already declared.")
      
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