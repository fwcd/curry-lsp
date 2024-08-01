-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ImplementationParams where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationParams {  }
      _ -> Left ("Unrecognized ImplementationParams value: " ++ ppJSON j)

data ImplementationParams = ImplementationParams {  }
 deriving (Show,Eq)

