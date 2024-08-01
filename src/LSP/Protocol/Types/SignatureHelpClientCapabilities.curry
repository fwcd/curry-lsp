-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSignatureInformationOptions
import LSP.Utils.JSON

instance FromJSON SignatureHelpClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSignatureInformation <- lookupMaybeFromJSON
                                          "signatureInformation"
                                          vs
           parsedContextSupport <- lookupMaybeFromJSON "contextSupport" vs
           return
            SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                            , signatureHelpClientCapabilitiesSignatureInformation = parsedSignatureInformation
                                            , signatureHelpClientCapabilitiesContextSupport = parsedContextSupport }
      _ ->
        Left
         ("Unrecognized SignatureHelpClientCapabilities value: " ++ ppJSON j)

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , signatureHelpClientCapabilitiesSignatureInformation :: Maybe ClientSignatureInformationOptions
                                                                       , signatureHelpClientCapabilitiesContextSupport :: Maybe Bool }
 deriving (Show,Eq)

