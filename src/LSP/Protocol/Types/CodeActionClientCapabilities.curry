-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientCodeActionLiteralOptions
import LSP.Protocol.Types.ClientCodeActionResolveOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeActionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedCodeActionLiteralSupport <- lookupMaybeFromJSON
                                              "codeActionLiteralSupport"
                                              vs
           parsedIsPreferredSupport <- lookupMaybeFromJSON
                                        "isPreferredSupport"
                                        vs
           parsedDisabledSupport <- lookupMaybeFromJSON "disabledSupport" vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           parsedHonorsChangeAnnotations <- lookupMaybeFromJSON
                                             "honorsChangeAnnotations"
                                             vs
           parsedDocumentationSupport <- lookupMaybeFromJSON
                                          "documentationSupport"
                                          vs
           return
            CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , codeActionClientCapabilitiesCodeActionLiteralSupport = parsedCodeActionLiteralSupport
                                         , codeActionClientCapabilitiesIsPreferredSupport = parsedIsPreferredSupport
                                         , codeActionClientCapabilitiesDisabledSupport = parsedDisabledSupport
                                         , codeActionClientCapabilitiesDataSupport = parsedDataSupport
                                         , codeActionClientCapabilitiesResolveSupport = parsedResolveSupport
                                         , codeActionClientCapabilitiesHonorsChangeAnnotations = parsedHonorsChangeAnnotations
                                         , codeActionClientCapabilitiesDocumentationSupport = parsedDocumentationSupport }
      _ ->
        Left ("Unrecognized CodeActionClientCapabilities value: " ++ ppJSON j)

instance ToJSON CodeActionClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (codeActionClientCapabilitiesDynamicRegistration x),  (.?=)
                                                              "codeActionLiteralSupport"
                                                              (codeActionClientCapabilitiesCodeActionLiteralSupport
                                                                x),  (.?=)
                                                                      "isPreferredSupport"
                                                                      (codeActionClientCapabilitiesIsPreferredSupport
                                                                        x),  (.?=)
                                                                              "disabledSupport"
                                                                              (codeActionClientCapabilitiesDisabledSupport
                                                                                x),  (.?=)
                                                                                      "dataSupport"
                                                                                      (codeActionClientCapabilitiesDataSupport
                                                                                        x),  (.?=)
                                                                                              "resolveSupport"
                                                                                              (codeActionClientCapabilitiesResolveSupport
                                                                                                x),  (.?=)
                                                                                                      "honorsChangeAnnotations"
                                                                                                      (codeActionClientCapabilitiesHonorsChangeAnnotations
                                                                                                        x),  (.?=)
                                                                                                              "documentationSupport"
                                                                                                              (codeActionClientCapabilitiesDocumentationSupport
                                                                                                                x)]

instance Default CodeActionClientCapabilities where
  def =
    CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration = def
                                 , codeActionClientCapabilitiesCodeActionLiteralSupport = def
                                 , codeActionClientCapabilitiesIsPreferredSupport = def
                                 , codeActionClientCapabilitiesDisabledSupport = def
                                 , codeActionClientCapabilitiesDataSupport = def
                                 , codeActionClientCapabilitiesResolveSupport = def
                                 , codeActionClientCapabilitiesHonorsChangeAnnotations = def
                                 , codeActionClientCapabilitiesDocumentationSupport = def }

data CodeActionClientCapabilities = CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , codeActionClientCapabilitiesCodeActionLiteralSupport :: Maybe ClientCodeActionLiteralOptions
                                                                 , codeActionClientCapabilitiesIsPreferredSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDisabledSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDataSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesResolveSupport :: Maybe ClientCodeActionResolveOptions
                                                                 , codeActionClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDocumentationSupport :: Maybe Bool }
 deriving (Show,Eq)

