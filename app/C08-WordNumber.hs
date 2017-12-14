module WordNumber where

import Data.List (intersperse)

digits :: Int -> [Int]
digits 0 = []
digits n = digits (div n 10) ++ [mod n 10]

wordNumber :: Int -> String
wordNumber n
  | n == 0 = "Zero"
  | n == 1 = "One"
  | n == 2 = "Two"
  | n == 3 = "Three"
  | n == 4 = "Four"
  | n == 5 = "Five"
  | n == 6 = "Six"
  | n == 7 = "Seven"
  | n == 8 = "Eight"
  | n == 9 = "Nine"

digitToWord :: Int -> String
digitToWord n = concat
  $ intersperse "-"
  $ map wordNumber
  $ digits n

