-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeNotebookDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocumentChangeEvent
import LSP.Protocol.Types.VersionedNotebookDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DidChangeNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedChange <- lookupFromJSON "change" vs
           return
            DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                            , didChangeNotebookDocumentParamsChange = parsedChange }
      _ ->
        Left
         ("Unrecognized DidChangeNotebookDocumentParams value: " ++ ppJSON j)

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , didChangeNotebookDocumentParamsChange :: NotebookDocumentChangeEvent }
 deriving (Show,Eq)

