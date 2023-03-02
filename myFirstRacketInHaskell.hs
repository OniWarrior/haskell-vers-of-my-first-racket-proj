module Main (main) where

-- Author: Stephen Aranda
-- File  : myFirstRacketInHaskell.hs
-- Date  : 3/1/23
-- Desc  : This is the haskell versions of my first Racket Programming project.

-----------divisibleByX?: Callback function that is given two values and
----------- determines if param y is evenly divisible by param x

yDivByX :: (Integer -> Integer -> Bool) -> Integer -> Bool -- Function declaration for func that will call divisibleByX
yDivByX func y = func y 5 -- Function definition for func that will call divisibleByX

divisibleByX :: Integer -> Integer -> Bool -- Function declaration for divisibleByX
divisibleByX y x = (y `mod` x) == 0 -- function definition for divisibleByX

--------------------------------------------------------------------------------

------------function-9: Higher order function that takes a function
------------as an argument and that function takes an integer(specifically 9) and applies it
------------to some operation occurring within that function

funcNine :: (Integer -> Integer) -> Integer -- Function declaration of function-9
funcNine func = func 9 -- Function definition of function-9

-- function for test case of function-9
addNineToFive :: Integer -> Integer -- Function declaration of test case function
addNineToFive x = x + 5 -- Function definition of test case function

-- function for test case of function-9
subNineFromTen :: Integer -> Integer -- Function declaration of test case function
subNineFromTen x = 10 - x

-- Entry point for test cases of all functions that will be demonstrated
main :: IO ()
main =
  do
    putStrLn "Is 15 divisible by x (5) :"

    print (yDivByX divisibleByX 15)