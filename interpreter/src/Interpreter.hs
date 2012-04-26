-- Module Interpreter
--
-- Task 1 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Interpreter where

import AbsKappaGrammar
import PrintKappaGrammar
import ErrM

import Monad
import qualified Data.Map as M

interpret :: Program -> IO ()
interpret p = putStrLn "no interpreter yet"
