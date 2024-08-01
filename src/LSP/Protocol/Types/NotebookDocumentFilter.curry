-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookDocumentFilter where

import LSP.Protocol.Types.NotebookDocumentFilterNotebookType
import LSP.Protocol.Types.NotebookDocumentFilterPattern
import LSP.Protocol.Types.NotebookDocumentFilterScheme

type NotebookDocumentFilter = Either (Either NotebookDocumentFilterNotebookType NotebookDocumentFilterScheme) NotebookDocumentFilterPattern

