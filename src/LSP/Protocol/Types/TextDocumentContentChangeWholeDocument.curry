-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentContentChangeWholeDocument where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TextDocumentContentChangeWholeDocument where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentContentChangeWholeDocument { textDocumentContentChangeWholeDocumentText = parsedText }
      _ ->
        Left
         ("Unrecognized TextDocumentContentChangeWholeDocument value: "
           ++ ppJSON j)

instance ToJSON TextDocumentContentChangeWholeDocument where
  toJSON x =
    object [(.=) "text" (textDocumentContentChangeWholeDocumentText x)]

data TextDocumentContentChangeWholeDocument = TextDocumentContentChangeWholeDocument { textDocumentContentChangeWholeDocumentText :: String }
 deriving (Show,Eq)

