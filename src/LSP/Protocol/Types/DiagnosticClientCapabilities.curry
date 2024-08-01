-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRelatedDocumentSupport <- lookupMaybeFromJSON
                                            "relatedDocumentSupport"
                                            vs
           return
            DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , diagnosticClientCapabilitiesRelatedDocumentSupport = parsedRelatedDocumentSupport }
      _ ->
        Left ("Unrecognized DiagnosticClientCapabilities value: " ++ ppJSON j)

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesRelatedDocumentSupport :: Maybe Bool }
 deriving (Show,Eq)

