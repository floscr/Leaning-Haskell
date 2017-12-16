module Cipher where

import Data.Char

offsetCharIsBiggerThanZ :: Char -> Int -> Bool
offsetCharIsBiggerThanZ c o = ((ord $ toUpper c) + o) > ord 'Z'

offsetCharBy :: Int -> Char -> Char
offsetCharBy o c = chr (ord s - 1 + (o - (ord e - ord c)))
  where
    s = if (isUpper c) then 'A' else 'a'
    e = if (isUpper c) then 'Z' else 'z'

encodeString :: Int -> String -> String
encodeString _ [] = []
encodeString o (c:cs)
  | offsetCharIsBiggerThanZ c o = offsetCharBy o c : encodeString o cs
  | otherwise                   = chr (ord c + o) : encodeString o cs
