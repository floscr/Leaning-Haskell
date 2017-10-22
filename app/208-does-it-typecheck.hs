-- -- 1
-- data Person = Person Bool
--
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)

-- -- 2
-- data Mood = Blah
--           | Woot deriving (Show, Eq)
--
-- settleDown x = if x == Woot
--                then Blah
--                else x

-- -- 3
-- type Subject = String
-- type Verb = String
-- type Object = String
--
-- data Sentence =
--   Sentence Subject Verb Object
--   deriving (Eq, Show)
--
-- s1 = Sentence "dogs" "drool"
-- s2 = Sentence "Julie" "loves" "dogs"

-- 4
data Rocks =
  Rocks String deriving (Eq, Ord, Show)

data Yeah =
  Yeah Bool deriving (Eq, Ord, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Ord, Show)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'
