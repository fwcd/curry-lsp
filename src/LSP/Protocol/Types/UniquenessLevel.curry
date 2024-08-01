-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.UniquenessLevel where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON UniquenessLevel where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "document" -> Right UniquenessLevelDocument
         "project" -> Right UniquenessLevelProject
         "group" -> Right UniquenessLevelGroup
         "scheme" -> Right UniquenessLevelScheme
         "global" -> Right UniquenessLevelGlobal
         _ -> Left ("Unrecognized UniquenessLevel value: " ++ ppJSON j)

data UniquenessLevel = UniquenessLevelDocument
                     | UniquenessLevelProject
                     | UniquenessLevelGroup
                     | UniquenessLevelScheme
                     | UniquenessLevelGlobal
 deriving (Show,Eq,Enum,Bounded,Ord)
