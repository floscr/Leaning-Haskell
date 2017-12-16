import Data.Char

filterUppercase :: String -> String
filterUppercase = filter isUpper

upperCaseFirstLetter :: String -> String
upperCaseFirstLetter (x:xs) = toUpper x : xs

toUpperCase :: String -> String
toUpperCase [] = []
toUpperCase (x:xs) = toUpper x : toUpperCase xs

firstLetterUpperCase :: String -> Char
firstLetterUpperCase = toUpper . head
