
-- 2
foldBoolSwitch :: a -> a -> Bool -> a
foldBoolSwitch x y z = case z of
                   True -> x
                   False -> y


foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y z
  | z == True = x
  | z == False = y

-- 3
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, b) = (f a, b)
