-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InlineCompletionTriggerKind
import LSP.Protocol.Types.SelectedCompletionInfo
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlineCompletionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedSelectedCompletionInfo <- lookupMaybeFromJSON
                                            "selectedCompletionInfo"
                                            vs
           return
            InlineCompletionContext { inlineCompletionContextTriggerKind = parsedTriggerKind
                                    , inlineCompletionContextSelectedCompletionInfo = parsedSelectedCompletionInfo }
      _ -> Left ("Unrecognized InlineCompletionContext value: " ++ ppJSON j)

instance ToJSON InlineCompletionContext where
  toJSON x =
    object
     [(.=) "triggerKind" (inlineCompletionContextTriggerKind x),  (.?=)
                                                                   "selectedCompletionInfo"
                                                                   (inlineCompletionContextSelectedCompletionInfo
                                                                     x)]

instance Default InlineCompletionContext where
  def =
    InlineCompletionContext { inlineCompletionContextTriggerKind = def
                            , inlineCompletionContextSelectedCompletionInfo = def }

data InlineCompletionContext = InlineCompletionContext { inlineCompletionContextTriggerKind :: InlineCompletionTriggerKind
                                                       , inlineCompletionContextSelectedCompletionInfo :: Maybe SelectedCompletionInfo }
 deriving (Show,Eq)

