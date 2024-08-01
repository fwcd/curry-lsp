-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ImplementationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationOptions {  }
      _ -> Left ("Unrecognized ImplementationOptions value: " ++ ppJSON j)

data ImplementationOptions = ImplementationOptions {  }
 deriving (Show,Eq)

