-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ReferenceOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ReferenceOptions {  }
      _ -> Left ("Unrecognized ReferenceOptions value: " ++ ppJSON j)

data ReferenceOptions = ReferenceOptions {  }
 deriving (Show,Eq)

