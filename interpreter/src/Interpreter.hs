-- Module Interpreter
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Interpreter where

import AbsKappaGrammar
import PrintKappaGrammar
import ParKappaGrammar
import ErrM

import Monad
import qualified Data.Map as M

interpret :: Program -> IO ()
interpret p = return ()