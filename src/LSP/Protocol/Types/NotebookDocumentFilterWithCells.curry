-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilterWithCells where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookCellLanguage
import LSP.Protocol.Types.NotebookDocumentFilter
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookDocumentFilterWithCells where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupMaybeFromJSON "notebook" vs
           parsedCells <- lookupFromJSON "cells" vs
           return
            NotebookDocumentFilterWithCells { notebookDocumentFilterWithCellsNotebook = parsedNotebook
                                            , notebookDocumentFilterWithCellsCells = parsedCells }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterWithCells value: " ++ ppJSON j)

instance ToJSON NotebookDocumentFilterWithCells where
  toJSON x =
    object
     [(.?=) "notebook" (notebookDocumentFilterWithCellsNotebook x),  (.=)
                                                                      "cells"
                                                                      (notebookDocumentFilterWithCellsCells
                                                                        x)]

instance Default NotebookDocumentFilterWithCells where
  def =
    NotebookDocumentFilterWithCells { notebookDocumentFilterWithCellsNotebook = def
                                    , notebookDocumentFilterWithCellsCells = def }

data NotebookDocumentFilterWithCells = NotebookDocumentFilterWithCells { notebookDocumentFilterWithCellsNotebook :: Maybe (Either String NotebookDocumentFilter)
                                                                       , notebookDocumentFilterWithCellsCells :: [NotebookCellLanguage] }
 deriving (Show,Eq)

