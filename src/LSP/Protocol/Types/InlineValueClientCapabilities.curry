-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlineValueClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized InlineValueClientCapabilities value: " ++ ppJSON j)

instance ToJSON InlineValueClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (inlineValueClientCapabilitiesDynamicRegistration x)]

instance Default InlineValueClientCapabilities where
  def =
    InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration = def }

data InlineValueClientCapabilities = InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

