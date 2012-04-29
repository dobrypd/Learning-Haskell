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
-- try parse ':q' or ':l filename'
-- try statement, in case of error
--         try expression
-- in checkFile try to interpret program entrypoint
checkLine :: String -> ENV.Env -> IO (ENV.Value, ENV.Env)
checkLine s env = do
        tokens <- return $ myLexer s
        case pStm tokens of
                Bad s_err  -> case pExp tokens of
                        Bad e_err -> do putStrLn "Statement, and expression parse error..."
                                        putStrLn s_err
                                        putStrLn e_err
                                        return (ENV.ErrorOccurred, env)
                        Ok tree -> case typecheckExp tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              return (ENV.ErrorOccurred, env)
                                Ok _    -> return $ runState (interpretExp tree) env
                Ok  tree -> case typecheckStm tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              return (ENV.ErrorOccurred, env)
                                Ok _    -> return $ runState (interpretStm tree) env
       
checkFile :: String -> ENV.Env -> IO (ENV.Value, ENV.Env)
checkFile s env = case pProgram (myLexer s) of
                Bad err  -> do putStrLn "Parse Failed"
                               putStrLn err
                               return (ENV.ErrorOccurred, env)
                Ok tree -> case typecheck tree of
                                Bad err -> do putStrLn "Type Error"
                                              putStrLn err
                                              return (ENV.ErrorOccurred, env)
                                Ok _    -> return $ runState (interpretProgram tree) env




promptLine :: String -> IO String
promptLine prompt = do
        putStr prompt
        hFlush stdout
        getLine        
        
isQuit :: String -> Bool
isQuit s = s == ":q"

isFile :: String -> (Bool, String)
isFile s
        | L.isPrefixOf ":l " s == True = (True, drop 3 s)
        | otherwise =  (False, [])
                                 
interpretationLoop :: ENV.Env -> IO()
interpretationLoop env = E.catch (do
        input <- promptLine "?: "
        if isQuit input 
                then putStrLn "Good Bye!"
                else do 
                        (isF, fileName) <- return $ isFile input
                        (nextEnv, value) <- if isF
                                then do 
                                        f <- (readFile fileName)
                                        return $ checkFile fileName env
                                else ( return $ checkLine input env)
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
                        putStrLn $ show $ snd checkFile f ENV.emptyEnv
                _      -> interpretationLoop ENV.emptyEnv