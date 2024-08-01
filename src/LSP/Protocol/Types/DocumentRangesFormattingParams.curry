-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangesFormattingParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FormattingOptions
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentRangesFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRanges <- lookupFromJSON "ranges" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentRangesFormattingParams { documentRangesFormattingParamsTextDocument = parsedTextDocument
                                           , documentRangesFormattingParamsRanges = parsedRanges
                                           , documentRangesFormattingParamsOptions = parsedOptions }
      _ ->
        Left
         ("Unrecognized DocumentRangesFormattingParams value: " ++ ppJSON j)

data DocumentRangesFormattingParams = DocumentRangesFormattingParams { documentRangesFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                     , documentRangesFormattingParamsRanges :: [Range]
                                                                     , documentRangesFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

