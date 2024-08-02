-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentCellChangeStructure where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.NotebookCellArrayChange
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Protocol.Types.TextDocumentItem
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON NotebookDocumentCellChangeStructure where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedArray <- lookupFromJSON "array" vs
           parsedDidOpen <- lookupMaybeFromJSON "didOpen" vs
           parsedDidClose <- lookupMaybeFromJSON "didClose" vs
           return
            NotebookDocumentCellChangeStructure { notebookDocumentCellChangeStructureArray = parsedArray
                                                , notebookDocumentCellChangeStructureDidOpen = parsedDidOpen
                                                , notebookDocumentCellChangeStructureDidClose = parsedDidClose }
      _ ->
        Left
         ("Unrecognized NotebookDocumentCellChangeStructure value: "
           ++ ppJSON j)

instance ToJSON NotebookDocumentCellChangeStructure where
  toJSON x =
    object
     [(.=) "array" (notebookDocumentCellChangeStructureArray x),  (.?=)
                                                                   "didOpen"
                                                                   (notebookDocumentCellChangeStructureDidOpen
                                                                     x),  (.?=)
                                                                           "didClose"
                                                                           (notebookDocumentCellChangeStructureDidClose
                                                                             x)]

instance Default NotebookDocumentCellChangeStructure where
  def =
    NotebookDocumentCellChangeStructure { notebookDocumentCellChangeStructureArray = def
                                        , notebookDocumentCellChangeStructureDidOpen = def
                                        , notebookDocumentCellChangeStructureDidClose = def }

data NotebookDocumentCellChangeStructure = NotebookDocumentCellChangeStructure { notebookDocumentCellChangeStructureArray :: NotebookCellArrayChange
                                                                               , notebookDocumentCellChangeStructureDidOpen :: Maybe [TextDocumentItem]
                                                                               , notebookDocumentCellChangeStructureDidClose :: Maybe [TextDocumentIdentifier] }
 deriving (Show,Eq)

