-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSymbolKindOptions
import LSP.Protocol.Types.ClientSymbolResolveOptions
import LSP.Protocol.Types.ClientSymbolTagOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSymbolKind <- lookupMaybeFromJSON "symbolKind" vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                              , workspaceSymbolClientCapabilitiesSymbolKind = parsedSymbolKind
                                              , workspaceSymbolClientCapabilitiesTagSupport = parsedTagSupport
                                              , workspaceSymbolClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ ->
        Left
         ("Unrecognized WorkspaceSymbolClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON WorkspaceSymbolClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (workspaceSymbolClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                   "symbolKind"
                                                                   (workspaceSymbolClientCapabilitiesSymbolKind
                                                                     x),  (.?=)
                                                                           "tagSupport"
                                                                           (workspaceSymbolClientCapabilitiesTagSupport
                                                                             x),  (.?=)
                                                                                   "resolveSupport"
                                                                                   (workspaceSymbolClientCapabilitiesResolveSupport
                                                                                     x)]

instance Default WorkspaceSymbolClientCapabilities where
  def =
    WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration = def
                                      , workspaceSymbolClientCapabilitiesSymbolKind = def
                                      , workspaceSymbolClientCapabilitiesTagSupport = def
                                      , workspaceSymbolClientCapabilitiesResolveSupport = def }

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                           , workspaceSymbolClientCapabilitiesSymbolKind :: Maybe ClientSymbolKindOptions
                                                                           , workspaceSymbolClientCapabilitiesTagSupport :: Maybe ClientSymbolTagOptions
                                                                           , workspaceSymbolClientCapabilitiesResolveSupport :: Maybe ClientSymbolResolveOptions }
 deriving (Show,Eq)

