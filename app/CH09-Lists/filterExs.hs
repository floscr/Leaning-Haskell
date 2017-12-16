filterThrees :: [Int] -> [Int]
filterThrees xs = filter (\x -> (rem x 3) == 0) xs

howManyThreesInList :: [Int] -> Int
howManyThreesInList xs = length $ filterThrees xs

theStringFilter :: String -> [String]
theStringFilter xs = filter (\x -> x /= "the") $ words xs

