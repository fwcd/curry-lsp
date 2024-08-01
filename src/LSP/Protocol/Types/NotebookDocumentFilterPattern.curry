-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilterPattern where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON NotebookDocumentFilterPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupMaybeFromJSON "notebookType" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            NotebookDocumentFilterPattern { notebookDocumentFilterPatternNotebookType = parsedNotebookType
                                          , notebookDocumentFilterPatternScheme = parsedScheme
                                          , notebookDocumentFilterPatternPattern = parsedPattern }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterPattern value: " ++ ppJSON j)

instance ToJSON NotebookDocumentFilterPattern where
  toJSON x =
    object
     [(.?=) "notebookType"
       (notebookDocumentFilterPatternNotebookType x),  (.?=) "scheme"
                                                        (notebookDocumentFilterPatternScheme
                                                          x),  (.=) "pattern"
                                                                (notebookDocumentFilterPatternPattern
                                                                  x)]

data NotebookDocumentFilterPattern = NotebookDocumentFilterPattern { notebookDocumentFilterPatternNotebookType :: Maybe String
                                                                   , notebookDocumentFilterPatternScheme :: Maybe String
                                                                   , notebookDocumentFilterPatternPattern :: GlobPattern }
 deriving (Show,Eq)

