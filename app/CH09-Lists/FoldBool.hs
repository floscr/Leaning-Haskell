myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs
-- myAnd (x:xs) = if x == False then False else myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem x ys = myAny ((==) x) ys
