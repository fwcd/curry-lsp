-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON HoverOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverOptions {  }
      _ -> Left ("Unrecognized HoverOptions value: " ++ ppJSON j)

data HoverOptions = HoverOptions {  }
 deriving (Show,Eq)

