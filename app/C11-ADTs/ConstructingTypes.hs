data GuessWhat =
  ChickenButt deriving (Eq, Show)

data Id a =
  MkId a deriving (Eq, Show)

data Product =
  Product a b deriving (Eq, Show)

data RecordProduct =
  RecordProduct { pfirst  :: a
                , psecond :: a }
                deriving (Eq, Show)

newtype NumCow =
  NumCow Int
  deriving (Eq, Show)

newtype NumPig =
  NumPig Int
  deriving (Eq, Show)

data FarmHouse =
  FarmHouse NumCow NumPig
  deriving (Eq, Show)

type FarmHouse' = Product NumCow NumPig
