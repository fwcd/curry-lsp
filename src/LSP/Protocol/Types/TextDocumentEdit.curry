-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.AnnotatedTextEdit
import LSP.Protocol.Types.OptionalVersionedTextDocumentIdentifier
import LSP.Protocol.Types.SnippetTextEdit
import LSP.Protocol.Types.TextEdit
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TextDocumentEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            TextDocumentEdit { textDocumentEditTextDocument = parsedTextDocument
                             , textDocumentEditEdits = parsedEdits }
      _ -> Left ("Unrecognized TextDocumentEdit value: " ++ ppJSON j)

instance ToJSON TextDocumentEdit where
  toJSON x =
    object
     [(.=) "textDocument" (textDocumentEditTextDocument x),  (.=) "edits"
                                                              (textDocumentEditEdits
                                                                x)]

instance Default TextDocumentEdit where
  def =
    TextDocumentEdit { textDocumentEditTextDocument = def
                     , textDocumentEditEdits = def }

data TextDocumentEdit = TextDocumentEdit { textDocumentEditTextDocument :: OptionalVersionedTextDocumentIdentifier
                                         , textDocumentEditEdits :: [Either (Either TextEdit AnnotatedTextEdit) SnippetTextEdit] }
 deriving (Show,Eq)

