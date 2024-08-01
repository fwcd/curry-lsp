-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineCompletionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            InlineCompletionOptions { inlineCompletionOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized InlineCompletionOptions value: " ++ ppJSON j)

instance ToJSON InlineCompletionOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (inlineCompletionOptionsWorkDoneProgress x)]

data InlineCompletionOptions = InlineCompletionOptions { inlineCompletionOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

