
-- Example
greetIfCool :: String -> IO ()
greetIfCool coolness =
  case cool of
    True  -> putStrLn "Ey whats crackin'"
    False -> putStrLn "No, fool!"
  where cool = coolness == "downright frosty yo"

-- 1
functionC x y =
  case x > y of
    True  -> y
    False -> x

-- 2
ifEvenAdd2 n =
  case even n of
    True  -> (n + 2)
    False -> n

-- 3
nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0

