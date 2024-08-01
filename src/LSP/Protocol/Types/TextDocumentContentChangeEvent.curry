-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentContentChangeEvent where

import LSP.Protocol.Types.TextDocumentContentChangePartial
import LSP.Protocol.Types.TextDocumentContentChangeWholeDocument

type TextDocumentContentChangeEvent = Either TextDocumentContentChangePartial TextDocumentContentChangeWholeDocument

