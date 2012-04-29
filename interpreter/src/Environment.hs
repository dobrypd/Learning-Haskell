-- Module Environment
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Environment where

import Control.Monad.State

import AbsKappaGrammar

data Value = VInt Integer | VFloat Double | VBoolean Bool | Undefined | ErrorOccurred

instance Show Value where
    show (VInt i)       = show i
    show (VFloat f)     = show f
    show (VBoolean b)   = show b
    show Undefined      = "undefined"
    show ErrorOccurred  = "error"

type Env = [[(Ident, Value)]]
emptyEnv = [[]]

stateFromEnv :: Env -> State Env Value
stateFromEnv env = do
        put env
        return Undefined