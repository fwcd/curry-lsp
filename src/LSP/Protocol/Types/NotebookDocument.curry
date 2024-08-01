-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocument where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.LSPObject
import LSP.Protocol.Types.NotebookCell
import LSP.Utils.JSON

instance FromJSON NotebookDocument where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedNotebookType <- lookupFromJSON "notebookType" vs
           parsedVersion <- lookupFromJSON "version" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedCells <- lookupFromJSON "cells" vs
           return
            NotebookDocument { notebookDocumentUri = parsedUri
                             , notebookDocumentNotebookType = parsedNotebookType
                             , notebookDocumentVersion = parsedVersion
                             , notebookDocumentMetadata = parsedMetadata
                             , notebookDocumentCells = parsedCells }
      _ -> Left ("Unrecognized NotebookDocument value: " ++ ppJSON j)

instance ToJSON NotebookDocument where
  toJSON x =
    object
     [(.=) "uri" (notebookDocumentUri x),  (.=) "notebookType"
                                            (notebookDocumentNotebookType
                                              x),  (.=) "version"
                                                    (notebookDocumentVersion
                                                      x),  (.?=) "metadata"
                                                            (notebookDocumentMetadata
                                                              x),  (.=)
                                                                    "cells"
                                                                    (notebookDocumentCells
                                                                      x)]

data NotebookDocument = NotebookDocument { notebookDocumentUri :: Uri
                                         , notebookDocumentNotebookType :: String
                                         , notebookDocumentVersion :: Int
                                         , notebookDocumentMetadata :: Maybe LSPObject
                                         , notebookDocumentCells :: [NotebookCell] }
 deriving (Show,Eq)

