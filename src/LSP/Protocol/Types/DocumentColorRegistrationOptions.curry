-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentColorRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentColorRegistrationOptions value: " ++ ppJSON j)

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions {  }
 deriving (Show,Eq)

