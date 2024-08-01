-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeParams where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeParams {  }
      _ -> Left ("Unrecognized LinkedEditingRangeParams value: " ++ ppJSON j)

data LinkedEditingRangeParams = LinkedEditingRangeParams {  }
 deriving (Show,Eq)

