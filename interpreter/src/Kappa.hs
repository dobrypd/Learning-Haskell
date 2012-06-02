-- Kappa
--
-- Task 2 JIPP
--
-- Author: Piotr Dobrowolski (291528)

module Main where

import System.IO
import System.IO.Error
import System(getArgs)
import System.Exit(exitFailure)
import qualified Control.Exception as E
import qualified Data.List as L
import Control.Monad.State

import AbsKappaGrammar
import LexKappaGrammar
import ParKappaGrammar
import ErrM

import TypeChecker
import Interpreter
import qualified Environment as ENV

-- Check and interpret all kinds of Kappa entrypoints
-- in checkLine 
-- try statement, 
-- in case of error
--         try expression
checkLine :: String -> ENV.Env -> IO (ENV.Value, ENV.Env)
checkLine s env = do
        tokens <- return $ myLexer s
        case pStm tokens of
                Bad s_err  -> case pExp tokens of
                        Bad e_err -> do putStrLn $ "Statement and expression error: " ++ s_err ++ ", " ++ e_err --TODO: stderr
                                        return (ENV.ErrorOccurred "Statement, and expression parse error...", env)
                        Ok tree -> case typecheckExp tree of
                                Bad err -> do 
                                        putStrLn $ "Type Error: " ++ err
                                        return (ENV.ErrorOccurred "Type Error", env)
                                Ok _    -> return $ runState (interpretExp tree) env
                Ok  tree -> case typecheckStm tree of
                                Bad err -> do 
                                        putStrLn "Type Error"
                                        putStrLn err
                                        return (ENV.ErrorOccurred "Type Error", env)
                                Ok _    -> do
                                        (v, e) <- return $ runState (interpretStm tree) env
                                        case v of
                                                RETURN val -> return (val, e)
                                                _ -> return (ENV.Undefined, e)

-- check file, return tuple: value of evaluated program sequence, and output environment
checkFile :: String -> ENV.Env -> IO (ENV.Value, ENV.Env)
checkFile s env = case pProgram (myLexer s) of
                Bad err  -> do putStrLn "Parse Failed"
                               putStrLn err --TODO: stderr
                               return (ENV.ErrorOccurred ("Parse Failed" ++ err), env)
                Ok tree -> case typecheck tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err --TODO: stderr
                                              return (ENV.ErrorOccurred "Type Error", env)
                                -- if types are ok, run state monad, it will be returned (val, env)
                                Ok _    -> return $ runState (interpretProgram tree) env



-- input output in console
promptLine :: String -> IO String
promptLine prompt = do
        putStr prompt
        hFlush stdout
        -- catch end of file (in case of Ctrl+D) change it to ":q"
        catch getLine (\e -> if isEOFError e then return ":q" else ioError e)

-- check if ':q' appears
isQuit :: String -> Bool
isQuit s = s == ":q"

-- check if user want load file to environment
isFile :: String -> (Bool, String)
isFile s
        | L.isPrefixOf ":l " s == True = (True, drop 3 s)
        | otherwise =  (False, [])

-- interpretation loop
interpretationLoop :: ENV.Env -> IO()
interpretationLoop env = do
        -- load prompt line, wait for user
        input <- promptLine "?: "
        if (isQuit input) then
                -- check if ':q' appears
                putStrLn "Good Bye!"
                else
                if input == [] -- just tapped enter
                        then
                                -- do nothing
                                interpretationLoop env
                        else do
                                -- check if ':f filename' appears 
                                (isF, fileName) <- return $ isFile input
                                (value, nextEnv) <- if isF
                                        then do
                                                f <- readFile fileName
                                                (v, n) <-  checkFile f env
                                                return (v, n)
                                        else do
                                                -- check expression, or statement
                                                (v, n) <- checkLine input env
                                                return (v, n)
                                -- print some informations after
                                -- step evaluation, 
                                putStrLn $ show value
                                putStrLn $ show nextEnv
                                -- next prompt line, in changed environment
                                interpretationLoop nextEnv
    

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
                -- interpret file
                        f <- readFile file
                        (value, nextEnv) <- checkFile f ENV.emptyEnv
                        hPutStr stderr "Result: "
                        putStrLn $ show value
                        putStrLn $ show nextEnv
                -- otherwise load interpretation loop
                _      -> interpretationLoop ENV.emptyEnv
