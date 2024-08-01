-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookCellTextDocumentFilter where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentFilter
import LSP.Utils.JSON

instance FromJSON NotebookCellTextDocumentFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupFromJSON "notebook" vs
           parsedLanguage <- lookupMaybeFromJSON "language" vs
           return
            NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook = parsedNotebook
                                           , notebookCellTextDocumentFilterLanguage = parsedLanguage }
      _ ->
        Left
         ("Unrecognized NotebookCellTextDocumentFilter value: " ++ ppJSON j)

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook :: Either String NotebookDocumentFilter
                                                                     , notebookCellTextDocumentFilterLanguage :: Maybe String }
 deriving (Show,Eq)

