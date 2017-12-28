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

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = squish $ map f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:x':[]) =
  if f x x' == GT then x else x'
myMaximumBy f (x:x':xs) =
  if f x x' == GT then myMaximumBy f (x:xs) else myMaximumBy f (x':xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
