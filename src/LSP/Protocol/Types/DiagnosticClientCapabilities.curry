-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientDiagnosticsTagOptions
import LSP.Utils.JSON

instance FromJSON DiagnosticClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedCodeDescriptionSupport <- lookupMaybeFromJSON
                                            "codeDescriptionSupport"
                                            vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRelatedDocumentSupport <- lookupMaybeFromJSON
                                            "relatedDocumentSupport"
                                            vs
           return
            DiagnosticClientCapabilities { diagnosticClientCapabilitiesRelatedInformation = parsedRelatedInformation
                                         , diagnosticClientCapabilitiesTagSupport = parsedTagSupport
                                         , diagnosticClientCapabilitiesCodeDescriptionSupport = parsedCodeDescriptionSupport
                                         , diagnosticClientCapabilitiesDataSupport = parsedDataSupport
                                         , diagnosticClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , diagnosticClientCapabilitiesRelatedDocumentSupport = parsedRelatedDocumentSupport }
      _ ->
        Left ("Unrecognized DiagnosticClientCapabilities value: " ++ ppJSON j)

instance ToJSON DiagnosticClientCapabilities where
  toJSON x =
    object
     [(.?=) "relatedInformation"
       (diagnosticClientCapabilitiesRelatedInformation x),  (.?=) "tagSupport"
                                                             (diagnosticClientCapabilitiesTagSupport
                                                               x),  (.?=)
                                                                     "codeDescriptionSupport"
                                                                     (diagnosticClientCapabilitiesCodeDescriptionSupport
                                                                       x),  (.?=)
                                                                             "dataSupport"
                                                                             (diagnosticClientCapabilitiesDataSupport
                                                                               x),  (.?=)
                                                                                     "dynamicRegistration"
                                                                                     (diagnosticClientCapabilitiesDynamicRegistration
                                                                                       x),  (.?=)
                                                                                             "relatedDocumentSupport"
                                                                                             (diagnosticClientCapabilitiesRelatedDocumentSupport
                                                                                               x)]

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { diagnosticClientCapabilitiesRelatedInformation :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesTagSupport :: Maybe ClientDiagnosticsTagOptions
                                                                 , diagnosticClientCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesDataSupport :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesRelatedDocumentSupport :: Maybe Bool }
 deriving (Show,Eq)

