-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangeFormattingParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FormattingOptions
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentRangeFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentRangeFormattingParams { documentRangeFormattingParamsWorkDoneToken = parsedWorkDoneToken
                                          , documentRangeFormattingParamsTextDocument = parsedTextDocument
                                          , documentRangeFormattingParamsRange = parsedRange
                                          , documentRangeFormattingParamsOptions = parsedOptions }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingParams value: " ++ ppJSON j)

data DocumentRangeFormattingParams = DocumentRangeFormattingParams { documentRangeFormattingParamsWorkDoneToken :: Maybe ProgressToken
                                                                   , documentRangeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                   , documentRangeFormattingParamsRange :: Range
                                                                   , documentRangeFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

