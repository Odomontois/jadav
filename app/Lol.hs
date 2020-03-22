module Lol where
import Control.Monad

main = mapM putStrLn $ replicateM 4 "abc"