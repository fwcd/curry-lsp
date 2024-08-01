-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSaveRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TextDocumentSaveRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TextDocumentSaveRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TextDocumentSaveRegistrationOptions value: "
           ++ ppJSON j)

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions {  }
 deriving (Show,Eq)

