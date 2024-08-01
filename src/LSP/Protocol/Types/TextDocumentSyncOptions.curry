-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSyncOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SaveOptions
import LSP.Protocol.Types.TextDocumentSyncKind
import LSP.Utils.JSON

instance FromJSON TextDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOpenClose <- lookupMaybeFromJSON "openClose" vs
           parsedChange <- lookupMaybeFromJSON "change" vs
           parsedWillSave <- lookupMaybeFromJSON "willSave" vs
           parsedWillSaveWaitUntil <- lookupMaybeFromJSON "willSaveWaitUntil"
                                       vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           return
            TextDocumentSyncOptions { textDocumentSyncOptionsOpenClose = parsedOpenClose
                                    , textDocumentSyncOptionsChange = parsedChange
                                    , textDocumentSyncOptionsWillSave = parsedWillSave
                                    , textDocumentSyncOptionsWillSaveWaitUntil = parsedWillSaveWaitUntil
                                    , textDocumentSyncOptionsSave = parsedSave }
      _ -> Left ("Unrecognized TextDocumentSyncOptions value: " ++ ppJSON j)

instance ToJSON TextDocumentSyncOptions where
  toJSON x =
    object
     [(.?=) "openClose" (textDocumentSyncOptionsOpenClose x),  (.?=) "change"
                                                                (textDocumentSyncOptionsChange
                                                                  x),  (.?=)
                                                                        "willSave"
                                                                        (textDocumentSyncOptionsWillSave
                                                                          x),  (.?=)
                                                                                "willSaveWaitUntil"
                                                                                (textDocumentSyncOptionsWillSaveWaitUntil
                                                                                  x),  (.?=)
                                                                                        "save"
                                                                                        (textDocumentSyncOptionsSave
                                                                                          x)]

data TextDocumentSyncOptions = TextDocumentSyncOptions { textDocumentSyncOptionsOpenClose :: Maybe Bool
                                                       , textDocumentSyncOptionsChange :: Maybe TextDocumentSyncKind
                                                       , textDocumentSyncOptionsWillSave :: Maybe Bool
                                                       , textDocumentSyncOptionsWillSaveWaitUntil :: Maybe Bool
                                                       , textDocumentSyncOptionsSave :: Maybe (Either Bool SaveOptions) }
 deriving (Show,Eq)

