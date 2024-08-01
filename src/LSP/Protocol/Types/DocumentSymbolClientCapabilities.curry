-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSymbolKindOptions
import LSP.Protocol.Types.ClientSymbolTagOptions
import LSP.Utils.JSON

instance FromJSON DocumentSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSymbolKind <- lookupMaybeFromJSON "symbolKind" vs
           parsedHierarchicalDocumentSymbolSupport <- lookupMaybeFromJSON
                                                       "hierarchicalDocumentSymbolSupport"
                                                       vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedLabelSupport <- lookupMaybeFromJSON "labelSupport" vs
           return
            DocumentSymbolClientCapabilities { documentSymbolClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , documentSymbolClientCapabilitiesSymbolKind = parsedSymbolKind
                                             , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport = parsedHierarchicalDocumentSymbolSupport
                                             , documentSymbolClientCapabilitiesTagSupport = parsedTagSupport
                                             , documentSymbolClientCapabilitiesLabelSupport = parsedLabelSupport }
      _ ->
        Left
         ("Unrecognized DocumentSymbolClientCapabilities value: " ++ ppJSON j)

data DocumentSymbolClientCapabilities = DocumentSymbolClientCapabilities { documentSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesSymbolKind :: Maybe ClientSymbolKindOptions
                                                                         , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesTagSupport :: Maybe ClientSymbolTagOptions
                                                                         , documentSymbolClientCapabilitiesLabelSupport :: Maybe Bool }
 deriving (Show,Eq)

