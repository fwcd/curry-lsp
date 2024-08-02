-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.UniquenessLevel where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON UniquenessLevel where
  toJSON x =
    case x of
      UniquenessLevelDocument -> toJSON "document"
      UniquenessLevelProject -> toJSON "project"
      UniquenessLevelGroup -> toJSON "group"
      UniquenessLevelScheme -> toJSON "scheme"
      UniquenessLevelGlobal -> toJSON "global"

instance Default UniquenessLevel where
  def = UniquenessLevelDocument

data UniquenessLevel = UniquenessLevelDocument
                     | UniquenessLevelProject
                     | UniquenessLevelGroup
                     | UniquenessLevelScheme
                     | UniquenessLevelGlobal
 deriving (Show,Eq,Enum,Bounded,Ord)

