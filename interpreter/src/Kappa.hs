-- Kappa
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Main where

import System.IO
import System(getArgs)
import System.Exit(exitFailure)
import qualified Control.Exception as E

import AbsKappaGrammar
import LexKappaGrammar
import ParKappaGrammar
import ErrM

import TypeChecker
import Interpreter
import Environment

-- Check program
-- in case of an error
--      try to check and interpret as statement
--      in case of error
--              try to check and interpret as Expression
check :: String -> IO ()
check s = case pProgram (myLexer s) of
                Bad err  -> do putStrLn "Parse Failed"
                                putStrLn err
                                exitFailure 
                Ok  tree -> case typecheck tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              exitFailure
                                Ok _    -> interpret tree

promptLine :: String -> IO String
promptLine prompt = do
        putStr prompt
        hFlush stdout
        getLine
                                 
interpretationLoop :: Env -> IO()
interpretationLoop env = E.catch (do
        input <- promptLine "?: "
        (more, new_env) <- check input env
        if more
                then interpretationLoop new_env
                else return())
    (\err -> do putStrLn (show err); hFlush stdout; interpretationLoop env)


-- Function loads file from args and interpret it
-- if no filename was in args then
-- interpreter will work on standart I/O
main :: IO()
main = do
        putStrLn "Welcome to Kappa interpreter"
        args <- getArgs
        case args of
                ["-h"] -> do putStrLn "Usage: Kappa [<SourceFile>]"
                [file] -> readFile file >>= check
                _      -> interpretationLoop empty_env --TODO: