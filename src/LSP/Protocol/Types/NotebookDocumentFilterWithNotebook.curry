-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilterWithNotebook where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookCellLanguage
import LSP.Protocol.Types.NotebookDocumentFilter
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookDocumentFilterWithNotebook where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupFromJSON "notebook" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookDocumentFilterWithNotebook { notebookDocumentFilterWithNotebookNotebook = parsedNotebook
                                               , notebookDocumentFilterWithNotebookCells = parsedCells }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterWithNotebook value: "
           ++ ppJSON j)

instance ToJSON NotebookDocumentFilterWithNotebook where
  toJSON x =
    object
     [(.=) "notebook" (notebookDocumentFilterWithNotebookNotebook x),  (.?=)
                                                                        "cells"
                                                                        (notebookDocumentFilterWithNotebookCells
                                                                          x)]

instance Default NotebookDocumentFilterWithNotebook where
  def =
    NotebookDocumentFilterWithNotebook { notebookDocumentFilterWithNotebookNotebook = def
                                       , notebookDocumentFilterWithNotebookCells = def }

data NotebookDocumentFilterWithNotebook = NotebookDocumentFilterWithNotebook { notebookDocumentFilterWithNotebookNotebook :: Either String NotebookDocumentFilter
                                                                             , notebookDocumentFilterWithNotebookCells :: Maybe [NotebookCellLanguage] }
 deriving (Show,Eq)

