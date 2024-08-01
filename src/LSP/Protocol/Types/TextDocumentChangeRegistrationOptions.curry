-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentChangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentSyncKind
import LSP.Utils.JSON

instance FromJSON TextDocumentChangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSyncKind <- lookupFromJSON "syncKind" vs
           return
            TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind = parsedSyncKind }
      _ ->
        Left
         ("Unrecognized TextDocumentChangeRegistrationOptions value: "
           ++ ppJSON j)

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind :: TextDocumentSyncKind }
 deriving (Show,Eq)

