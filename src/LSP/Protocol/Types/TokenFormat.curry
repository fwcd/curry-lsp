-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TokenFormat where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TokenFormat where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "relative" -> Right TokenFormatRelative
         _ -> Left ("Unrecognized TokenFormat value: " ++ ppJSON j)

instance ToJSON TokenFormat where
  toJSON x = case x of TokenFormatRelative -> toJSON "relative"

data TokenFormat = TokenFormatRelative
 deriving (Show,Eq,Enum,Bounded,Ord)

