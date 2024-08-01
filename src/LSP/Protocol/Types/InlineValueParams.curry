-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InlineValueContext
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON InlineValueParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedContext <- lookupFromJSON "context" vs
           return
            InlineValueParams { inlineValueParamsWorkDoneToken = parsedWorkDoneToken
                              , inlineValueParamsTextDocument = parsedTextDocument
                              , inlineValueParamsRange = parsedRange
                              , inlineValueParamsContext = parsedContext }
      _ -> Left ("Unrecognized InlineValueParams value: " ++ ppJSON j)

data InlineValueParams = InlineValueParams { inlineValueParamsWorkDoneToken :: Maybe ProgressToken
                                           , inlineValueParamsTextDocument :: TextDocumentIdentifier
                                           , inlineValueParamsRange :: Range
                                           , inlineValueParamsContext :: InlineValueContext }
 deriving (Show,Eq)

