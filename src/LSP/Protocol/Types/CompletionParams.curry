-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionContext
import LSP.Utils.JSON

instance FromJSON CompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return CompletionParams { completionParamsContext = parsedContext }
      _ -> Left ("Unrecognized CompletionParams value: " ++ ppJSON j)

data CompletionParams = CompletionParams { completionParamsContext :: Maybe CompletionContext }
 deriving (Show,Eq)

