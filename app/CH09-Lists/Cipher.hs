module Cipher where

import Data.Char

offsetCharIsBiggerThanZ :: Char -> Int -> Bool
offsetCharIsBiggerThanZ c o = ((ord $ toUpper c) + o) > ord 'Z'

offsetCharBy :: Int -> Char -> Char
offsetCharBy o c = chr (ord s - 1 + (o - (ord e - ord c)))
  where
    s = if (isUpper c) then 'A' else 'a'
    e = if (isUpper c) then 'Z' else 'z'

encodeString :: (Int -> Int -> Int) -> Int -> String -> String
encodeString _ _ [] = []
encodeString f o (c:cs)
  | offsetCharIsBiggerThanZ c o = offsetCharBy o c : encodeString f o cs
  | otherwise                   = chr (f (ord c) o) : encodeString f o cs

caesar :: Int -> String -> String
caesar o c = encodeString (+) o c
