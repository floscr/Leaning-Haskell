and' :: [Bool] -> Bool
and' [] = True
-- and' (x:xs) = if x == False then False else and' xs
and' (x:xs) = x && and' xs

or' :: [Bool] -> Bool
or' [] = False
or' (x:xs) = x || or' xs

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' f (x:xs) = f x || any' f xs

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x ys = any' ((==) x) ys

reverse' :: [a] -> [a]
reverse' s = go s []
  where go [] o = o
        go (i:is) o = go is (i:o)

squish :: [[a]] -> [a]
squish s = go s []
  where go [] o = o
        go (x:xs) o = go xs (o ++ x)
