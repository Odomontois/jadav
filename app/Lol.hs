module Lol where
import Control.Monad

kek :: [[Char]]
kek = replicateM 4 "abc"

main :: IO [()]
main = mapM putStrLn $ replicateM 4 "abc"