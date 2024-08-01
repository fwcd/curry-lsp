-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentChangeEvent where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.LSPObject
import LSP.Protocol.Types.NotebookDocumentCellChanges
import LSP.Utils.JSON

instance FromJSON NotebookDocumentChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata = parsedMetadata
                                        , notebookDocumentChangeEventCells = parsedCells }
      _ ->
        Left ("Unrecognized NotebookDocumentChangeEvent value: " ++ ppJSON j)

instance ToJSON NotebookDocumentChangeEvent where
  toJSON x =
    object
     [(.?=) "metadata" (notebookDocumentChangeEventMetadata x),  (.?=) "cells"
                                                                  (notebookDocumentChangeEventCells
                                                                    x)]

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata :: Maybe LSPObject
                                                               , notebookDocumentChangeEventCells :: Maybe NotebookDocumentCellChanges }
 deriving (Show,Eq)

