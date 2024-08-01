-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidOpenTextDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentItem
import LSP.Utils.JSON

instance FromJSON DidOpenTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DidOpenTextDocumentParams value: " ++ ppJSON j)

instance ToJSON DidOpenTextDocumentParams where
  toJSON x =
    object [(.=) "textDocument" (didOpenTextDocumentParamsTextDocument x)]

data DidOpenTextDocumentParams = DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument :: TextDocumentItem }
 deriving (Show,Eq)

