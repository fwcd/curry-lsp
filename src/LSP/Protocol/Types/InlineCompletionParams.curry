-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InlineCompletionContext
import LSP.Utils.JSON

instance FromJSON InlineCompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupFromJSON "context" vs
           return
            InlineCompletionParams { inlineCompletionParamsContext = parsedContext }
      _ -> Left ("Unrecognized InlineCompletionParams value: " ++ ppJSON j)

data InlineCompletionParams = InlineCompletionParams { inlineCompletionParamsContext :: InlineCompletionContext }
 deriving (Show,Eq)

