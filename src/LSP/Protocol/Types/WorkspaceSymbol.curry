-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbol where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Location
import LSP.Protocol.Types.LocationUriOnly
import LSP.Protocol.Types.SymbolKind
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbol where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedContainerName <- lookupMaybeFromJSON "containerName" vs
           parsedLocation <- lookupFromJSON "location" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            WorkspaceSymbol { workspaceSymbolName = parsedName
                            , workspaceSymbolKind = parsedKind
                            , workspaceSymbolTags = parsedTags
                            , workspaceSymbolContainerName = parsedContainerName
                            , workspaceSymbolLocation = parsedLocation
                            , workspaceSymbolData = parsedData }
      _ -> Left ("Unrecognized WorkspaceSymbol value: " ++ ppJSON j)

data WorkspaceSymbol = WorkspaceSymbol { workspaceSymbolName :: String
                                       , workspaceSymbolKind :: SymbolKind
                                       , workspaceSymbolTags :: Maybe [SymbolTag]
                                       , workspaceSymbolContainerName :: Maybe String
                                       , workspaceSymbolLocation :: Either Location LocationUriOnly
                                       , workspaceSymbolData :: Maybe LSPAny }
 deriving (Show,Eq)

