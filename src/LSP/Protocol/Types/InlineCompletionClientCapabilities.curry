-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlineCompletionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            InlineCompletionClientCapabilities { inlineCompletionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized InlineCompletionClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON InlineCompletionClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (inlineCompletionClientCapabilitiesDynamicRegistration x)]

instance Default InlineCompletionClientCapabilities where
  def =
    InlineCompletionClientCapabilities { inlineCompletionClientCapabilitiesDynamicRegistration = def }

data InlineCompletionClientCapabilities = InlineCompletionClientCapabilities { inlineCompletionClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

