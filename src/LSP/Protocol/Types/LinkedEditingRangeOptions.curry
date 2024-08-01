-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeOptions {  }
      _ -> Left ("Unrecognized LinkedEditingRangeOptions value: " ++ ppJSON j)

data LinkedEditingRangeOptions = LinkedEditingRangeOptions {  }
 deriving (Show,Eq)

