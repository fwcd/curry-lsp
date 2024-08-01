-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilterScheme where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Utils.JSON

instance FromJSON NotebookDocumentFilterScheme where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupMaybeFromJSON "notebookType" vs
           parsedScheme <- lookupFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            NotebookDocumentFilterScheme { notebookDocumentFilterSchemeNotebookType = parsedNotebookType
                                         , notebookDocumentFilterSchemeScheme = parsedScheme
                                         , notebookDocumentFilterSchemePattern = parsedPattern }
      _ ->
        Left ("Unrecognized NotebookDocumentFilterScheme value: " ++ ppJSON j)

instance ToJSON NotebookDocumentFilterScheme where
  toJSON x =
    object
     [(.?=) "notebookType" (notebookDocumentFilterSchemeNotebookType x),  (.=)
                                                                           "scheme"
                                                                           (notebookDocumentFilterSchemeScheme
                                                                             x),  (.?=)
                                                                                   "pattern"
                                                                                   (notebookDocumentFilterSchemePattern
                                                                                     x)]

data NotebookDocumentFilterScheme = NotebookDocumentFilterScheme { notebookDocumentFilterSchemeNotebookType :: Maybe String
                                                                 , notebookDocumentFilterSchemeScheme :: String
                                                                 , notebookDocumentFilterSchemePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

