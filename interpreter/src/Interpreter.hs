-- Module Interpreter
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Interpreter where

import Environment

import AbsKappaGrammar
import PrintKappaGrammar
import ParKappaGrammar
import ErrM

import Control.Monad.State


interpretProgram :: Program -> State Env Value

interpretProgram :: Program -> Env -> IO ()
interpretProgram prog env = return ()

interpretStm :: Stm -> Env -> IO ()
interpretStm stm env = return ()

interpretExp :: Exp -> Env -> IO ()
interpretExp exp env = return ()

