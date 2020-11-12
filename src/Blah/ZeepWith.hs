{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

module Blah.ZeepWith where

type family LastList la :: *
type instance LastList [a] = a
type instance LastList (r -> la) = LastList la

type family ReplaceLastList la b :: *
type instance ReplaceLastList [a] b = b
type instance ReplaceLastList (r -> la) b = r -> ReplaceLastList la b

class ZeepWith la where
    zeepWith :: (LastList la -> b -> c) -> la -> ReplaceLastList la ([b] -> [c])

instance ZeepWith [a] where
    zeepWith f as bs = zipWith f as bs

instance ZeepWith la => ZeepWith (r -> la) where
    zeepWith f rxa r = zeepWith f (rxa r) 


