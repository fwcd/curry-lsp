-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidSaveNotebookDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DidSaveNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           return
            DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument = parsedNotebookDocument }
      _ ->
        Left
         ("Unrecognized DidSaveNotebookDocumentParams value: " ++ ppJSON j)

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier }
 deriving (Show,Eq)

