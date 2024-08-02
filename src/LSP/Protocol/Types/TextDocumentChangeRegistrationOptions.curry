-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentChangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Protocol.Types.TextDocumentSyncKind
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextDocumentChangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedSyncKind <- lookupFromJSON "syncKind" vs
           return
            TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                  , textDocumentChangeRegistrationOptionsSyncKind = parsedSyncKind }
      _ ->
        Left
         ("Unrecognized TextDocumentChangeRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON TextDocumentChangeRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (textDocumentChangeRegistrationOptionsDocumentSelector x),  (.=)
                                                                    "syncKind"
                                                                    (textDocumentChangeRegistrationOptionsSyncKind
                                                                      x)]

instance Default TextDocumentChangeRegistrationOptions where
  def =
    TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsDocumentSelector = def
                                          , textDocumentChangeRegistrationOptionsSyncKind = def }

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                   , textDocumentChangeRegistrationOptionsSyncKind :: TextDocumentSyncKind }
 deriving (Show,Eq)

