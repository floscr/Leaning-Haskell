module Print3Broken where

greeting = "Yarrr"

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn "middle"
  putStrLn greeting
  putStrLn "middle"
  printSecond
    where greeting = "Narrrr"
