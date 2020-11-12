module Main where

import Solves.KindIndex ( getKind )
import Control.Monad

-- >>> kek
kek :: [[Char]]
kek = replicateM 4 "abc"

main :: IO ()
main = do
    let e10 = getKind 8
    print e10
