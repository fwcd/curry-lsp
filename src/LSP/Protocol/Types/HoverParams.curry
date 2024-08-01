-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON HoverParams where
  fromJSON j =
    case j of
      JObject vs -> do return HoverParams {  }
      _ -> Left ("Unrecognized HoverParams value: " ++ ppJSON j)

data HoverParams = HoverParams {  }
 deriving (Show,Eq)

