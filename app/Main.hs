module Main where

import Solves.KindIndex

main :: IO ()
main = do
    let e10 = getKind 8
    print e10
