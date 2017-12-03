recursiveAdd :: (Eq a, Num a) => a -> a
recursiveAdd num = go num 0
  where go n count
         | count == num = n
         | otherwise = go (n + count) (count + 1)

recursiveMultiplication :: (Integral a) => a -> a -> a
recursiveMultiplication numA numB = go 0 numA numB 0
  where go product a b count
         | count == b = product
         | otherwise = go (product + a) a b (count + 1)

-- Divided result
-- stolen from: https://github.com/dwayne/haskell-programming/blob/9af6fc2a106640b8f4eb7504f29fcffb89dd071d/ch8/dividedBy.hs
data DividedResult a = Result a | DividedByZero deriving Show

dividedBy :: Integral a => a -> a -> DividedResult a
dividedBy num denom
  | denom == 0                  = DividedByZero
  | signum num == signum denom  = Result r
  | otherwise                   = Result (-r)
  where
    r = go (abs num) (abs denom) 0
    go n d count
      | n < d     = count
      | otherwise = go (n - d) d (count + 1)
