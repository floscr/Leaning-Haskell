module Cipher where

import Data.Char

offsetCharIsBiggerThanZ :: Char -> Int -> Bool
offsetCharIsBiggerThanZ c o = ((ord $ toUpper c) + o) > ord 'Z'

encodeString :: Int -> String -> String
encodeString _ [] = []
encodeString o (c:cs)
  | isUpper c && offsetCharIsBiggerThanZ c o = chr (ord 'A' - 1 + (o - (ord 'Z' - ord c))) :  encodeString o cs
  | offsetCharIsBiggerThanZ c o              = chr (ord 'a' - 1 + (o - (ord 'z' - ord c))) :  encodeString o cs
  | otherwise                                = chr (ord c + o) : encodeString o cs
