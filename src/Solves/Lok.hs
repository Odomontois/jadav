{-# LANGUAGE DataKinds,  TypeFamilies #-}

module Solves.Lok where

import Data.Vector

data Nat = Z | S Nat

type family BT (n :: Nat) a where
    BT Z a = Vector a
    BT (S n) a = Vector (BT n a)