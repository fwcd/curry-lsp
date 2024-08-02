-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WatchKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WatchKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right WatchKindCreate
         2 -> Right WatchKindChange
         4 -> Right WatchKindDelete
         _ -> Left ("Unrecognized WatchKind value: " ++ ppJSON j)

instance ToJSON WatchKind where
  toJSON x =
    case x of
      WatchKindCreate -> toJSON 1
      WatchKindChange -> toJSON 2
      WatchKindDelete -> toJSON 4

instance Default WatchKind where
  def = WatchKindCreate

data WatchKind = WatchKindCreate | WatchKindChange | WatchKindDelete
 deriving (Show,Eq,Enum,Bounded,Ord)

