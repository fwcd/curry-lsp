-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentPositionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON TextDocumentPositionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           return
            TextDocumentPositionParams { textDocumentPositionParamsTextDocument = parsedTextDocument
                                       , textDocumentPositionParamsPosition = parsedPosition }
      _ ->
        Left ("Unrecognized TextDocumentPositionParams value: " ++ ppJSON j)

data TextDocumentPositionParams = TextDocumentPositionParams { textDocumentPositionParamsTextDocument :: TextDocumentIdentifier
                                                             , textDocumentPositionParamsPosition :: Position }
 deriving (Show,Eq)

