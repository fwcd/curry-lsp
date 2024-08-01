-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentSyncOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentFilterWithCells
import LSP.Protocol.Types.NotebookDocumentFilterWithNotebook
import LSP.Utils.JSON

instance FromJSON NotebookDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookSelector <- lookupFromJSON "notebookSelector" vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           return
            NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector = parsedNotebookSelector
                                        , notebookDocumentSyncOptionsSave = parsedSave }
      _ ->
        Left ("Unrecognized NotebookDocumentSyncOptions value: " ++ ppJSON j)

instance ToJSON NotebookDocumentSyncOptions where
  toJSON x =
    object
     [(.=) "notebookSelector"
       (notebookDocumentSyncOptionsNotebookSelector x),  (.?=) "save"
                                                          (notebookDocumentSyncOptionsSave
                                                            x)]

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector :: [Either NotebookDocumentFilterWithNotebook NotebookDocumentFilterWithCells]
                                                               , notebookDocumentSyncOptionsSave :: Maybe Bool }
 deriving (Show,Eq)

