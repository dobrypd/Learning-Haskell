-- Module Environment
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Environment where

import AbsKappaGrammar

data Value = VInt Integer | VFloat Double | VBoolean Bool | Undefined

instance Show Value where
    show (VInt i)       = show i
    show (VFloat f)     = show f
    show (VBoolean b)   = show b
    show Undefined      = "undefined"

Type Env = [[(Ident, Value)]]
emptyEnv = [[]]