module Main where

import Primes
import Java
import Counter

main = do
  putStrLn $ "The 101st prime is " ++ show (primes !! 100)
  i <- java $ do
    counter <- newCounterWith 0
    counter <.> increment
    counter <.> get   
  putStrLn $ "The counter value is: " ++ show i

