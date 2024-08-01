-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentCellContentChanges where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentContentChangeEvent
import LSP.Protocol.Types.VersionedTextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON NotebookDocumentCellContentChanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocument <- lookupFromJSON "document" vs
           parsedChanges <- lookupFromJSON "changes" vs
           return
            NotebookDocumentCellContentChanges { notebookDocumentCellContentChangesDocument = parsedDocument
                                               , notebookDocumentCellContentChangesChanges = parsedChanges }
      _ ->
        Left
         ("Unrecognized NotebookDocumentCellContentChanges value: "
           ++ ppJSON j)

data NotebookDocumentCellContentChanges = NotebookDocumentCellContentChanges { notebookDocumentCellContentChangesDocument :: VersionedTextDocumentIdentifier
                                                                             , notebookDocumentCellContentChangesChanges :: [TextDocumentContentChangeEvent] }
 deriving (Show,Eq)

