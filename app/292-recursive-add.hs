recursiveAdd :: (Eq a, Num a) => a -> a
recursiveAdd num = go num 0
  where go n count
         | count == num = n
         | otherwise = go (n + count) (count + 1)
