-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentColorOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorOptions {  }
      _ -> Left ("Unrecognized DocumentColorOptions value: " ++ ppJSON j)

data DocumentColorOptions = DocumentColorOptions {  }
 deriving (Show,Eq)

