module Solves.KindIndex
  ( Knd (..),
    depth,
    kindIndex,
    getKind,
  )
where

import Data.List
import Data.Maybe (fromJust)

exacts, accs :: [Integer]
ff =
  iterate
    (\(e, a) -> let e' = 2 * e * (a - e) + e * e in (e', a + e'))
    (1, 1)

(exacts, accs) = unzip ff

infixr 6 :->

data Knd = T | Knd :-> Knd deriving (Show, Eq, Ord, Read)

depth :: Knd -> Int
depth T = 0
depth (a :-> b) = 1 + max (depth a) (depth b)

kindEIdx, kindIndex :: Knd -> Integer
kindEIdx T = 0
kindEIdx k@(l :-> r) =
  let d = depth k
      ld = depth l
      rd = depth r
      (ei, ai) = ff !! (d - 1)
      g = ei * (ai - ei)
   in case compare ld rd of
        LT -> kindIndex l * ei + kindEIdx r
        GT -> kindEIdx l * (ai - ei) + kindIndex r + g
        EQ -> kindEIdx l * ei + kindEIdx r + 2 * g
kindIndex T = 0
kindIndex k = kindEIdx k + (accs !! (depth k - 1))

getEKind :: Int -> Integer -> Knd
getEKind 0 0 = T
getEKind d n = if n < g then v1 else if n < 2 * g then v2 else v3
  where
    (ei, ai) = ff !! (d - 1)
    g = ei * (ai - ei)
    v1 = let (ln, rn) = divMod n ei in getKind ln :-> getEKind (d - 1) rn
    v2 =
      let (ln, rn) = divMod (n - g) (ai - ei)
       in getEKind (d - 1) ln :-> getKind rn
    v3 =
      let (ln, rn) = divMod (n - 2 * g) ei
       in getEKind (d - 1) ln :-> getEKind (d - 1) rn

getKind :: Integer -> Knd
getKind 0 = T
getKind n =
  let d = fromJust $ findIndex (> n) accs
   in getEKind d (n - (accs !! (d - 1)))
