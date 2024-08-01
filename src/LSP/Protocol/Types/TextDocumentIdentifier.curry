-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentIdentifier where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON TextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            TextDocumentIdentifier { textDocumentIdentifierUri = parsedUri }
      _ -> Left ("Unrecognized TextDocumentIdentifier value: " ++ ppJSON j)

instance ToJSON TextDocumentIdentifier where
  toJSON x = object [(.=) "uri" (textDocumentIdentifierUri x)]

data TextDocumentIdentifier = TextDocumentIdentifier { textDocumentIdentifierUri :: DocumentUri }
 deriving (Show,Eq)

