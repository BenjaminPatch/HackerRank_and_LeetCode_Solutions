{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

-- Below has two solutions.
-- Print "Hello World" on a new line 'n' times.
main :: IO()
main = do
    n <- readLn :: IO Int

    -- create a [IO ()] with replicate, then evaluates each 
    -- of these monadic structures, ignoring the results.
    sequence_ $ replicate n $ putStrLn "Hello World"

    -- carry out putStrLn n times, ignoring the results
    replicateM_ n $ putStrLn "Hello world"

