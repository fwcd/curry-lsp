-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON FoldingRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            FoldingRangeParams { foldingRangeParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized FoldingRangeParams value: " ++ ppJSON j)

data FoldingRangeParams = FoldingRangeParams { foldingRangeParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

