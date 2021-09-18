module FizzBuzz where

fizzBuzz :: [Integer] -> [String]
fizzBuzz = map fizzLogic

fizzLogic :: Integer -> String
fizzLogic i =
    if i `mod` 3 == 0 && i `mod` 5 == 0 then
        "FizzBuzz"
    else if i `mod` 3 == 0 then
        "Fizz"
    else if i `mod` 5 == 0 then
        "Buzz"
    else
        show i