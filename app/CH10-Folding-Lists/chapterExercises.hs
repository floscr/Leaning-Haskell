stops = "pbtdkg"
vowels = "aeiou"

mixWords :: [a] -> [b] -> [(a, b, a)]
mixWords xs ys = [(a, b, a) | a <- xs, b <- ys]

-- mixWords' :: String -> String -> [String]
-- mixWords' xs ys = ["" ++ a ++ b ++ a | a <- xs, b <- ys]

-- Wrong! That would only zip each letter pair
mixWordsZip :: [a] -> [b] -> [(a, b, a)]
mixWordsZip = zipWith (\x y -> (x, y, x))

seekritFunc :: String -> Int
seekritFunc x =
  div (sum (map length (words x)))
      (length (words x))

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\x y -> f x || y) False

myElem :: Eq a => a -> [a] -> Bool
myElem x = myAny ((==) x)

myReverse :: [a] -> [a]
myReverse = foldl (\x y -> y : x) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x y -> f x : y) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\x y -> if f x then x : y else y) []

squish :: [[a]] -> [a]
squish = foldr (\x y -> x ++ y) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\x y -> f x ++ y) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id
