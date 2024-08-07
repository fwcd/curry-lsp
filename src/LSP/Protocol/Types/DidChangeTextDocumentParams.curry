-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeTextDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentContentChangeEvent
import LSP.Protocol.Types.VersionedTextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DidChangeTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedContentChanges <- lookupFromJSON "contentChanges" vs
           return
            DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument = parsedTextDocument
                                        , didChangeTextDocumentParamsContentChanges = parsedContentChanges }
      _ ->
        Left ("Unrecognized DidChangeTextDocumentParams value: " ++ ppJSON j)

instance ToJSON DidChangeTextDocumentParams where
  toJSON x =
    object
     [(.=) "textDocument" (didChangeTextDocumentParamsTextDocument x),  (.=)
                                                                         "contentChanges"
                                                                         (didChangeTextDocumentParamsContentChanges
                                                                           x)]

instance Default DidChangeTextDocumentParams where
  def =
    DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument = def
                                , didChangeTextDocumentParamsContentChanges = def }

data DidChangeTextDocumentParams = DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument :: VersionedTextDocumentIdentifier
                                                               , didChangeTextDocumentParamsContentChanges :: [TextDocumentContentChangeEvent] }
 deriving (Show,Eq)

