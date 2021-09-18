module FizzBuzzSpec where

import Test.Hspec
import FizzBuzz

main :: IO ()
main = hspec $ do
  describe "FizzBuzz" $ do
    it "returns numbers not divisible by 3 or 5" $
      fizzBuzz [1] `shouldBe` ["1"]

    it "returns 'Fizz' if number divides by 3" $
      fizzBuzz [1, 2, 3] `shouldBe` ["1","2","Fizz"]

    it "returns 'Buzz' if number divides by 5" $
      fizzBuzz [1,2,3,4,5] `shouldBe` ["1","2","Fizz","4","Buzz"]

    it "returns 'FizzBuzz' if number divides 3 and 5" $
      fizzBuzz [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] `shouldBe` [
        "1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14", "FizzBuzz"
      ]