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
import qualified Data.List as L

import AbsKappaGrammar
import LexKappaGrammar
import ParKappaGrammar
import ErrM

import TypeChecker
import Interpreter
import Environment

-- Check and interpret all kinds of Kappa entrypoints
-- in checkLine 
-- try parse ':q' or ':l filename'
-- try statement, in case of error
--         try expression
-- in checkFile try to interpret program entrypoint
checkLine :: String -> Env -> IO (Evn, Value)
checkLine s env = do
        tokens <- myLexer s
        case pStm tokens of
                Bad s_err  -> case pExp tokens of
                        Bad e_err -> do putStrLn "Statement, and expression parse error..."
                                        putStrLn s_err
                                        putStrLn e_err
                                        return (env, 0) --TODO: kod bledu
                        Ok tree -> case typecheckExp tree of
                                Bad err -> do putStrLn "Type Error"
                                                putStrLn err
                                                return (env, 0) --TODO: kod bledu
                                Ok _    -> runState (interpretExp tree) (stateFromEnv env)
                Ok  tree -> case typecheckStm tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              return (env, 0) --TODO: kod bledu
                                Ok _    -> runState (interpretStm tree) (stateFromEnv env)
       
checkFile :: String -> Env -> IO (Env, Value)
checkFile s env = case pProgram (myLexer s) of
                Bad err  -> do putStrLn "Parse Failed"
                                putStrLn err
                                return (env, 0) --TODO: err
                Ok tree -> case typecheck tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              return (env, 0)
                                Ok _    -> do
                                        runState (interpretProgram tree) (stateFromEnv env) --TODO:stateFromEnv




promptLine :: String -> IO String
promptLine prompt = do
        putStr prompt
        hFlush stdout
        getLine        
        
isQuit :: String -> Bool
isQuit s = s == ":q"

isFile :: String -> (Bool, file_name)
isFile s
        | L.isPrefixOf ":l " s == True = (True, drop 3 s)
        | otherwise =  (False, [])
                                 
interpretationLoop :: Env -> IO()
interpretationLoop env = E.catch (do
        input <- promptLine "?: "
        if isStmQuit input then do
                putStrLn "Good Bye!"
                return()
        (isF, fileName) <- isFile input
        if isF 
                then do
                        f <- readFile fileName
                        (nextEnv, value) <- checkFile fileName env
                else (nextEnv, value) <- checkLine line env
        putStrLn value
        interpretationLoop nextEnv
        )
    (\err -> do putStrLn (show err); hFlush stdout; interpretationLoop env)


-- Function loads file from args and interpret it
-- if no filename was in args then
-- interpreter will work on standard I/O
-- in command line you can write <:l filename> to load file
main :: IO()
main = do
        putStrLn "Welcome to Kappa interpreter"
        args <- getArgs
        case args of
                ["-h"] -> do 
                        putStrLn "Usage: Kappa [<SourceFile>]"
                [file] -> do
                        f <- readFile file
                        putStrLn snd $ checkFile f empty_env
                _      -> interpretationLoop empty_env