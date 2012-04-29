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
interpretProgram prog = return Undefined

interpretStm :: Stm -> State Env Value
interpretStm stm = return Undefined

interpretExp :: Exp -> State Env Value
interpretExp exp = return Undefined

