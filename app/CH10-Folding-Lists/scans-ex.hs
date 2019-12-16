fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

fibs20 :: [Integer]
fibs20 = take 20 fibs

fibsLessThan100 :: [Integer]
fibsLessThan100 = takeWhile (<100) $ fibs

fibsN :: Int -> Integer
fibsN = (!!) fibs

factorialScan :: [Integer]
factorialScan n
