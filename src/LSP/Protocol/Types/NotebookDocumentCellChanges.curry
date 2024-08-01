-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentCellChanges where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookCell
import LSP.Protocol.Types.NotebookDocumentCellChangeStructure
import LSP.Protocol.Types.NotebookDocumentCellContentChanges
import LSP.Utils.JSON

instance FromJSON NotebookDocumentCellChanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStructure <- lookupMaybeFromJSON "structure" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           parsedTextContent <- lookupMaybeFromJSON "textContent" vs
           return
            NotebookDocumentCellChanges { notebookDocumentCellChangesStructure = parsedStructure
                                        , notebookDocumentCellChangesData = parsedData
                                        , notebookDocumentCellChangesTextContent = parsedTextContent }
      _ ->
        Left ("Unrecognized NotebookDocumentCellChanges value: " ++ ppJSON j)

instance ToJSON NotebookDocumentCellChanges where
  toJSON x =
    object
     [(.?=) "structure" (notebookDocumentCellChangesStructure x),  (.?=)
                                                                    "data"
                                                                    (notebookDocumentCellChangesData
                                                                      x),  (.?=)
                                                                            "textContent"
                                                                            (notebookDocumentCellChangesTextContent
                                                                              x)]

data NotebookDocumentCellChanges = NotebookDocumentCellChanges { notebookDocumentCellChangesStructure :: Maybe NotebookDocumentCellChangeStructure
                                                               , notebookDocumentCellChangesData :: Maybe [NotebookCell]
                                                               , notebookDocumentCellChangesTextContent :: Maybe [NotebookDocumentCellContentChanges] }
 deriving (Show,Eq)

