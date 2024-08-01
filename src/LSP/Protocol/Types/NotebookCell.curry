-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookCell where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ExecutionSummary
import LSP.Protocol.Types.LSPObject
import LSP.Protocol.Types.NotebookCellKind
import LSP.Utils.JSON

instance FromJSON NotebookCell where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedDocument <- lookupFromJSON "document" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedExecutionSummary <- lookupMaybeFromJSON "executionSummary" vs
           return
            NotebookCell { notebookCellKind = parsedKind
                         , notebookCellDocument = parsedDocument
                         , notebookCellMetadata = parsedMetadata
                         , notebookCellExecutionSummary = parsedExecutionSummary }
      _ -> Left ("Unrecognized NotebookCell value: " ++ ppJSON j)

instance ToJSON NotebookCell where
  toJSON x =
    object
     [(.=) "kind" (notebookCellKind x),  (.=) "document"
                                          (notebookCellDocument x),  (.?=)
                                                                      "metadata"
                                                                      (notebookCellMetadata
                                                                        x),  (.?=)
                                                                              "executionSummary"
                                                                              (notebookCellExecutionSummary
                                                                                x)]

data NotebookCell = NotebookCell { notebookCellKind :: NotebookCellKind
                                 , notebookCellDocument :: DocumentUri
                                 , notebookCellMetadata :: Maybe LSPObject
                                 , notebookCellExecutionSummary :: Maybe ExecutionSummary }
 deriving (Show,Eq)

