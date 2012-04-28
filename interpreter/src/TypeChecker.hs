-- Module TypeChecker
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module TypeChecker where

import AbsKappaGrammar
import PrintKappaGrammar
import ErrM


typecheck :: Program -> Err ()
typecheck p = return ()