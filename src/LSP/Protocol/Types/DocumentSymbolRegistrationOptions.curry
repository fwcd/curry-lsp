-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentSymbolRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentSymbolRegistrationOptions value: "
           ++ ppJSON j)

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions {  }
 deriving (Show,Eq)

