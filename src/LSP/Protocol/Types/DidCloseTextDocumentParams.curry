-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidCloseTextDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DidCloseTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument = parsedTextDocument }
      _ ->
        Left ("Unrecognized DidCloseTextDocumentParams value: " ++ ppJSON j)

instance ToJSON DidCloseTextDocumentParams where
  toJSON x =
    object [(.=) "textDocument" (didCloseTextDocumentParamsTextDocument x)]

data DidCloseTextDocumentParams = DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

