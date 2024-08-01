-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentSyncRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentFilterWithCells
import LSP.Protocol.Types.NotebookDocumentFilterWithNotebook
import LSP.Utils.JSON

instance FromJSON NotebookDocumentSyncRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookSelector <- lookupFromJSON "notebookSelector" vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            NotebookDocumentSyncRegistrationOptions { notebookDocumentSyncRegistrationOptionsNotebookSelector = parsedNotebookSelector
                                                    , notebookDocumentSyncRegistrationOptionsSave = parsedSave
                                                    , notebookDocumentSyncRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized NotebookDocumentSyncRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON NotebookDocumentSyncRegistrationOptions where
  toJSON x =
    object
     [(.=) "notebookSelector"
       (notebookDocumentSyncRegistrationOptionsNotebookSelector x),  (.?=)
                                                                      "save"
                                                                      (notebookDocumentSyncRegistrationOptionsSave
                                                                        x),  (.?=)
                                                                              "id"
                                                                              (notebookDocumentSyncRegistrationOptionsId
                                                                                x)]

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions { notebookDocumentSyncRegistrationOptionsNotebookSelector :: [Either NotebookDocumentFilterWithNotebook NotebookDocumentFilterWithCells]
                                                                                       , notebookDocumentSyncRegistrationOptionsSave :: Maybe Bool
                                                                                       , notebookDocumentSyncRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

