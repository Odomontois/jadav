{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE FlexibleContexts         #-}
{-# LANGUAGE GADTs                    #-}
{-# LANGUAGE NamedFieldPuns           #-}
{-# LANGUAGE RankNTypes               #-}
{-# LANGUAGE TypeFamilies             #-}

module MTG where

import           Data.Foldable
import           Data.Kind
import           Data.Typeable

type Effect = String

type Keyword = String

type NameWord = String

type CardName = [NameWord]

data CostItem
  = ManaCost CostColors Int
  | LifeCost Int
  | Tap
  | Requirement Effect

data Color
  = Blue
  | Red
  | Green
  | White
  | Black

type CostColors = [Color]

type Cost = [CostItem]

data Action =
  Action
    { actionEffect :: Effect
    , actionCost   :: Cost
    }

type Actions = [Action]

data CardType
  = Creature
  | Instant
  | Sorcery
  | Enhancement
  | Planeswalker
  | Artifact
  | Land
  deriving (Typeable)

data family TypeData :: CardType -> Type

data instance  TypeData Creature = CreatureData{power :: Int,
                                                toughness :: Int, abilities :: Actions}
                                     deriving Typeable

data instance  TypeData Instant = InstantData Actions
                                    deriving Typeable

data instance  TypeData Sorcery = SorceryData Actions
                                    deriving Typeable

data instance  TypeData Enhancement = EnhancementData Actions
                                        deriving Typeable

data instance  TypeData Planeswalker = PlaneswalkerData
                                         deriving Typeable

data instance  TypeData Artifact = ArtifactData Actions
                                     deriving Typeable

data instance  TypeData Land = BasicLand Color
                             | SpecialPlain Actions
                                 deriving Typeable

data Card =
  Card
    { name      :: CardName
    , keywords  :: [Keyword]
    , cardData  :: [CardData]
    , cardCost  :: Cost
    , legendary :: Bool
    }

data CardData where
  CardData
    :: forall t. Typeable (TypeData t)
    => TypeData t
    -> CardData

getData :: (Typeable (TypeData t)) => CardData -> Maybe (TypeData t)
getData (CardData td) = cast td

findData :: Typeable (TypeData t) => Card -> Maybe (TypeData t)
findData = asum . fmap getData . cardData
