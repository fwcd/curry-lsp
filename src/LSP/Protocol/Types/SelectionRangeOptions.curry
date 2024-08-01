-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SelectionRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeOptions {  }
      _ -> Left ("Unrecognized SelectionRangeOptions value: " ++ ppJSON j)

data SelectionRangeOptions = SelectionRangeOptions {  }
 deriving (Show,Eq)

