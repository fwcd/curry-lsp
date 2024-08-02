-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentFormattingClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON DocumentFormattingClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentFormattingClientCapabilitiesDynamicRegistration x)]

instance Default DocumentFormattingClientCapabilities where
  def =
    DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration = def }

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

