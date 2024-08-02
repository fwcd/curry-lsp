-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidOpenNotebookDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookDocument
import LSP.Protocol.Types.TextDocumentItem
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DidOpenNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                          , didOpenNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ ->
        Left
         ("Unrecognized DidOpenNotebookDocumentParams value: " ++ ppJSON j)

instance ToJSON DidOpenNotebookDocumentParams where
  toJSON x =
    object
     [(.=) "notebookDocument"
       (didOpenNotebookDocumentParamsNotebookDocument x),  (.=)
                                                            "cellTextDocuments"
                                                            (didOpenNotebookDocumentParamsCellTextDocuments
                                                              x)]

instance Default DidOpenNotebookDocumentParams where
  def =
    DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument = def
                                  , didOpenNotebookDocumentParamsCellTextDocuments = def }

data DidOpenNotebookDocumentParams = DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument :: NotebookDocument
                                                                   , didOpenNotebookDocumentParamsCellTextDocuments :: [TextDocumentItem] }
 deriving (Show,Eq)

