-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MonikerParams where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerParams {  }
      _ -> Left ("Unrecognized MonikerParams value: " ++ ppJSON j)

data MonikerParams = MonikerParams {  }
 deriving (Show,Eq)

