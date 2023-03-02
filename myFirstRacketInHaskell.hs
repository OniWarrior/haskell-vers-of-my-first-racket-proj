module Main (main) where

-- Author: Stephen Aranda
-- File  : myFirstRacketInHaskell.hs
-- Date  : 3/1/23
-- Desc  : This is the haskell versions of my first Racket Programming project.

yDivByX :: (Integer -> Integer -> Bool) -> Integer -> Bool -- Function declaration for func that will call divisibleByX
yDivByX func y = func y 5 -- Function definition for func that will call divisibleByX

divisibleByX :: Integer -> Integer -> Bool -- Function declaration for divisibleByX
divisibleByX y x = (y `mod` x) == 0 -- function definition for divisibleByX

-- Entry point for test cases of all functions that will be demonstrated
main :: IO ()
main =
  do
    putStrLn "Is 15 divisible by x (5) :"

    print (yDivByX divisibleByX 15)