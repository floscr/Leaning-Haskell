-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (f a) == b

arit :: Num b => (a -> b) -> Integer -> a -> b
arit f b a = fromInteger ((f a) + a)
