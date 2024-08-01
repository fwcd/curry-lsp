-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentLinkRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentLinkRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentLinkRegistrationOptions value: " ++ ppJSON j)

data DocumentLinkRegistrationOptions = DocumentLinkRegistrationOptions {  }
 deriving (Show,Eq)

