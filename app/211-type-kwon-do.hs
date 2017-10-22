
-- 3. a)
addOneIfOdd :: Integer -> Integer
addOneIfOdd n = case odd n of
                  True -> (\x -> x + 1) n
                  False -> n

-- 3. b)
-- {- addFive x y = (if x > y then y else x) + 5-}

-- My Solution
addFive x y = (\a -> a + 5) (if x > y then y else x)

-- Everybody else's solution
addFiveAlt = \x y -> (if x > y then y else x) + 5
