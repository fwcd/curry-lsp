-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MonikerOptions where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerOptions {  }
      _ -> Left ("Unrecognized MonikerOptions value: " ++ ppJSON j)

data MonikerOptions = MonikerOptions {  }
 deriving (Show,Eq)

