foldl (flip (*)) 1 [1..3]
-- (((1 * 1) * 2) * 3)
-- ((2 * 1) * 3)
-- (2 * 3)
-- 6

(const 1 (const 2 (const 3 'a')))

-- https://github.com/stliang/HaskellExercises/blob/054a4675196708b6f881f6e3b52f643809e060db/FirstPrinciple/557.hs
-- (((1 * 1) * 2) * 3)
z = foldl (flip (*)) 1 [1 .. 3]
a = foldr (++) "" ["woot", "WOOT", "woot"]
b = foldr max 'a' "fear is the little death"
c = foldr (\x y -> and (x : y : [])) True [False, True]
d = foldr (||) True [False, True]
e = foldl (flip $ (++) . show) "" [1 .. 5]
f = foldr (flip const) 'a' [1 .. 5]
g = foldr (flip const) 0 "tacos"
h = foldl const 0 "burritos"
i = foldl const 'z' [1 .. 5]
