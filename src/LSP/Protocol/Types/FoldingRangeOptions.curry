-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeOptions {  }
      _ -> Left ("Unrecognized FoldingRangeOptions value: " ++ ppJSON j)

data FoldingRangeOptions = FoldingRangeOptions {  }
 deriving (Show,Eq)

