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
