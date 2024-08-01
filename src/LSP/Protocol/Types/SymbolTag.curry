-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SymbolTag where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SymbolTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SymbolTagDeprecated
         _ -> Left ("Unrecognized SymbolTag value: " ++ ppJSON j)

instance ToJSON SymbolTag where
  toJSON x = case x of SymbolTagDeprecated -> toJSON 1

data SymbolTag = SymbolTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

