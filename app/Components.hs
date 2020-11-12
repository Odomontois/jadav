{-# LANGUAGE TupleSections #-}

module Components where

import Data.Map

data Comp = MocoLeek | BeastMilk | Flour | Halite | Milk | Rennet | Egg deriving (Eq, Ord, Show)

type Recipe = Map Comp Integer

recipe :: [Comp] -> Recipe
recipe = fromList . fmap (,1)

butter = recipe [Milk, Halite]

pasta = recipe [Flour, Egg, Halite]

cheese = recipe [Milk, Rennet]

whiteSauce = butter |+| recipe[BeastMilk, Flour, Halite]

(|+|) :: Recipe -> Recipe -> Recipe
(|+|) = unionWith (+)

macaronyGratini = whiteSauce |+| recipe [MocoLeek] |+| pasta |+| pasta |+| cheese

main = print macaronyGratini