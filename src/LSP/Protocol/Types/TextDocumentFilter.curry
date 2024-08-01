-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentFilter where

import LSP.Protocol.Types.TextDocumentFilterLanguage
import LSP.Protocol.Types.TextDocumentFilterPattern
import LSP.Protocol.Types.TextDocumentFilterScheme

type TextDocumentFilter = Either (Either TextDocumentFilterLanguage TextDocumentFilterScheme) TextDocumentFilterPattern

