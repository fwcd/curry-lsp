-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidCloseNotebookDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentIdentifier
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DidCloseNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                           , didCloseNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ ->
        Left
         ("Unrecognized DidCloseNotebookDocumentParams value: " ++ ppJSON j)

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier
                                                                     , didCloseNotebookDocumentParamsCellTextDocuments :: [TextDocumentIdentifier] }
 deriving (Show,Eq)

