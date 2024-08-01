-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentContentChangePartial where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON TextDocumentContentChangePartial where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedRangeLength <- lookupMaybeFromJSON "rangeLength" vs
           parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentContentChangePartial { textDocumentContentChangePartialRange = parsedRange
                                             , textDocumentContentChangePartialRangeLength = parsedRangeLength
                                             , textDocumentContentChangePartialText = parsedText }
      _ ->
        Left
         ("Unrecognized TextDocumentContentChangePartial value: " ++ ppJSON j)

data TextDocumentContentChangePartial = TextDocumentContentChangePartial { textDocumentContentChangePartialRange :: Range
                                                                         , textDocumentContentChangePartialRangeLength :: Maybe Int
                                                                         , textDocumentContentChangePartialText :: String }
 deriving (Show,Eq)

