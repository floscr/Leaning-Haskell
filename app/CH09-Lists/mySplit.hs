module PoemLines where

safeHead :: [a] -> Maybe a
safeHead []      = Nothing
safeHead (x : _) = Just x

eftInt :: Int -> Int -> [Int]
eftInt x y
  | x > y = []
  | x == y = [x]
  | otherwise = x : eftInt (succ x) y

eftChar :: Char -> Char -> [Char]
eftChar x y
  | x > y = []
  | x == y = [x]
  | otherwise = x : eftChar (succ x) y

-- myWords :: [Char] -> [[Char]]
-- myWords a = go a []
--   where go input output
--          | input == [] = output
--          | otherwise = (dropWhile (== ' ') $ dropWhile (/=' ') input) (output ++ takeWhile (/=' ') input)
--

myWords :: String -> [String]
myWords [] = []
myWords (' ' : xs) = myWords xs
myWords xs = takeWhile (/=' ') xs : myWords (dropWhile (/=' ') xs)

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

myLines :: String -> [String]
myLines [] = []
myLines ('\n' : xs) = myLines xs
myLines xs = takeWhile (/='\n') xs : myLines (dropWhile (/='\n') xs)

-- mySplit' :: Eq a => a -> [a] -> [[a]]
-- mySplit' _ [] = []
-- mySplit' _ (d : xs) = mySplit' d xs
-- mySplit' d xs =
--   takeWhile (/=d) xs : mySplit' d (dropWhile (/=d) xs)

mySplit :: Eq a => a -> [a] -> [[a]]
mySplit _ [] = []
mySplit d a@(x:xs)
  | x == d = mySplit d xs
  | otherwise =
      takeWhile (/=d) a : mySplit d (dropWhile (/=d) a)

myLines' :: String -> [String]
myLines' = mySplit '\n'

myWords' :: String -> [String]
myWords' = mySplit ' '
