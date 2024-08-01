-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeLensWorkspaceClientCapabilities
import LSP.Protocol.Types.DiagnosticWorkspaceClientCapabilities
import LSP.Protocol.Types.DidChangeConfigurationClientCapabilities
import LSP.Protocol.Types.DidChangeWatchedFilesClientCapabilities
import LSP.Protocol.Types.ExecuteCommandClientCapabilities
import LSP.Protocol.Types.FileOperationClientCapabilities
import LSP.Protocol.Types.FoldingRangeWorkspaceClientCapabilities
import LSP.Protocol.Types.InlayHintWorkspaceClientCapabilities
import LSP.Protocol.Types.InlineValueWorkspaceClientCapabilities
import LSP.Protocol.Types.SemanticTokensWorkspaceClientCapabilities
import LSP.Protocol.Types.WorkspaceEditClientCapabilities
import LSP.Protocol.Types.WorkspaceSymbolClientCapabilities
import LSP.Utils.JSON

instance FromJSON WorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedApplyEdit <- lookupMaybeFromJSON "applyEdit" vs
           parsedWorkspaceEdit <- lookupMaybeFromJSON "workspaceEdit" vs
           parsedDidChangeConfiguration <- lookupMaybeFromJSON
                                            "didChangeConfiguration"
                                            vs
           parsedDidChangeWatchedFiles <- lookupMaybeFromJSON
                                           "didChangeWatchedFiles"
                                           vs
           parsedSymbol <- lookupMaybeFromJSON "symbol" vs
           parsedExecuteCommand <- lookupMaybeFromJSON "executeCommand" vs
           parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           parsedConfiguration <- lookupMaybeFromJSON "configuration" vs
           parsedSemanticTokens <- lookupMaybeFromJSON "semanticTokens" vs
           parsedCodeLens <- lookupMaybeFromJSON "codeLens" vs
           parsedFileOperations <- lookupMaybeFromJSON "fileOperations" vs
           parsedInlineValue <- lookupMaybeFromJSON "inlineValue" vs
           parsedInlayHint <- lookupMaybeFromJSON "inlayHint" vs
           parsedDiagnostics <- lookupMaybeFromJSON "diagnostics" vs
           parsedFoldingRange <- lookupMaybeFromJSON "foldingRange" vs
           return
            WorkspaceClientCapabilities { workspaceClientCapabilitiesApplyEdit = parsedApplyEdit
                                        , workspaceClientCapabilitiesWorkspaceEdit = parsedWorkspaceEdit
                                        , workspaceClientCapabilitiesDidChangeConfiguration = parsedDidChangeConfiguration
                                        , workspaceClientCapabilitiesDidChangeWatchedFiles = parsedDidChangeWatchedFiles
                                        , workspaceClientCapabilitiesSymbol = parsedSymbol
                                        , workspaceClientCapabilitiesExecuteCommand = parsedExecuteCommand
                                        , workspaceClientCapabilitiesWorkspaceFolders = parsedWorkspaceFolders
                                        , workspaceClientCapabilitiesConfiguration = parsedConfiguration
                                        , workspaceClientCapabilitiesSemanticTokens = parsedSemanticTokens
                                        , workspaceClientCapabilitiesCodeLens = parsedCodeLens
                                        , workspaceClientCapabilitiesFileOperations = parsedFileOperations
                                        , workspaceClientCapabilitiesInlineValue = parsedInlineValue
                                        , workspaceClientCapabilitiesInlayHint = parsedInlayHint
                                        , workspaceClientCapabilitiesDiagnostics = parsedDiagnostics
                                        , workspaceClientCapabilitiesFoldingRange = parsedFoldingRange }
      _ ->
        Left ("Unrecognized WorkspaceClientCapabilities value: " ++ ppJSON j)

data WorkspaceClientCapabilities = WorkspaceClientCapabilities { workspaceClientCapabilitiesApplyEdit :: Maybe Bool
                                                               , workspaceClientCapabilitiesWorkspaceEdit :: Maybe WorkspaceEditClientCapabilities
                                                               , workspaceClientCapabilitiesDidChangeConfiguration :: Maybe DidChangeConfigurationClientCapabilities
                                                               , workspaceClientCapabilitiesDidChangeWatchedFiles :: Maybe DidChangeWatchedFilesClientCapabilities
                                                               , workspaceClientCapabilitiesSymbol :: Maybe WorkspaceSymbolClientCapabilities
                                                               , workspaceClientCapabilitiesExecuteCommand :: Maybe ExecuteCommandClientCapabilities
                                                               , workspaceClientCapabilitiesWorkspaceFolders :: Maybe Bool
                                                               , workspaceClientCapabilitiesConfiguration :: Maybe Bool
                                                               , workspaceClientCapabilitiesSemanticTokens :: Maybe SemanticTokensWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesCodeLens :: Maybe CodeLensWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesFileOperations :: Maybe FileOperationClientCapabilities
                                                               , workspaceClientCapabilitiesInlineValue :: Maybe InlineValueWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesInlayHint :: Maybe InlayHintWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesDiagnostics :: Maybe DiagnosticWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesFoldingRange :: Maybe FoldingRangeWorkspaceClientCapabilities }
 deriving (Show,Eq)

