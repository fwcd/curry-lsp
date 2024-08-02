-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentOnTypeFormattingClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentOnTypeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON DocumentOnTypeFormattingClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentOnTypeFormattingClientCapabilitiesDynamicRegistration x)]

instance Default DocumentOnTypeFormattingClientCapabilities where
  def =
    DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration = def }

data DocumentOnTypeFormattingClientCapabilities = DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

