-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFilter where

import LSP.Protocol.Types.NotebookCellTextDocumentFilter
import LSP.Protocol.Types.TextDocumentFilter

type DocumentFilter = Either TextDocumentFilter NotebookCellTextDocumentFilter

