module TakeThird where

takeThirdCharacter :: String -> Char
takeThirdCharacter myString = myString !! 3

takeFromCurry :: Int -> Char
takeFromCurry i = "Curry is awesome" !! i
