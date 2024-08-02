-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidCloseNotebookDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentIdentifier
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
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

instance ToJSON DidCloseNotebookDocumentParams where
  toJSON x =
    object
     [(.=) "notebookDocument"
       (didCloseNotebookDocumentParamsNotebookDocument x),  (.=)
                                                             "cellTextDocuments"
                                                             (didCloseNotebookDocumentParamsCellTextDocuments
                                                               x)]

instance Default DidCloseNotebookDocumentParams where
  def =
    DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument = def
                                   , didCloseNotebookDocumentParamsCellTextDocuments = def }

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier
                                                                     , didCloseNotebookDocumentParamsCellTextDocuments :: [TextDocumentIdentifier] }
 deriving (Show,Eq)

