-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilterNotebookType where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON NotebookDocumentFilterNotebookType where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupFromJSON "notebookType" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            NotebookDocumentFilterNotebookType { notebookDocumentFilterNotebookTypeNotebookType = parsedNotebookType
                                               , notebookDocumentFilterNotebookTypeScheme = parsedScheme
                                               , notebookDocumentFilterNotebookTypePattern = parsedPattern }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterNotebookType value: "
           ++ ppJSON j)

data NotebookDocumentFilterNotebookType = NotebookDocumentFilterNotebookType { notebookDocumentFilterNotebookTypeNotebookType :: String
                                                                             , notebookDocumentFilterNotebookTypeScheme :: Maybe String
                                                                             , notebookDocumentFilterNotebookTypePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

