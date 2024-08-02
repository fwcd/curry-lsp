module LSP.Runner.Server
  ( runServerLoop
  ) where

import JSON.Data ( JValue (..) )
import System.IO ( Handle, hPutStrLn, stderr )
import LSP.Protocol.Stream ( readMessage, writeMessage )
import LSP.Protocol.Message ( Request (..), Response (..) )
import LSP.Protocol.Types
import LSP.Utils.JSON ( FromJSON (..) )

-- | Runs the language server event loop using the given input and output handles.
-- TODO: Add configuration parameter (e.g. for server name, handlers etc.)
runServerLoop :: Handle -> Handle -> IO ()
runServerLoop i o = runLoop
  where
    runLoop = do
      m <- readMessage i :: IO (Request InitializeParams)
      -- TODO: Do something proper
      hPutStrLn stderr $ show m
      flip writeMessage o $ Response
        { rspJsonrpc = reqJsonrpc m
        , rspId = reqId m
        , rspResult = InitializeResult
          { initializeResultCapabilities = ServerCapabilities
            -- TODO: Use a default/empty instance
            { serverCapabilitiesPositionEncoding = Nothing
            , serverCapabilitiesTextDocumentSync = Nothing
            , serverCapabilitiesNotebookDocumentSync = Nothing
            , serverCapabilitiesCompletionProvider = Nothing
            , serverCapabilitiesHoverProvider = Nothing
            , serverCapabilitiesSignatureHelpProvider = Nothing
            , serverCapabilitiesDeclarationProvider = Nothing
            , serverCapabilitiesDefinitionProvider = Nothing
            , serverCapabilitiesTypeDefinitionProvider = Nothing
            , serverCapabilitiesImplementationProvider = Nothing
            , serverCapabilitiesReferencesProvider = Nothing
            , serverCapabilitiesDocumentHighlightProvider = Nothing
            , serverCapabilitiesDocumentSymbolProvider = Nothing
            , serverCapabilitiesCodeActionProvider = Nothing
            , serverCapabilitiesCodeLensProvider = Nothing
            , serverCapabilitiesDocumentLinkProvider = Nothing
            , serverCapabilitiesColorProvider = Nothing
            , serverCapabilitiesWorkspaceSymbolProvider = Nothing
            , serverCapabilitiesDocumentFormattingProvider = Nothing
            , serverCapabilitiesDocumentRangeFormattingProvider = Nothing
            , serverCapabilitiesDocumentOnTypeFormattingProvider = Nothing
            , serverCapabilitiesRenameProvider = Nothing
            , serverCapabilitiesFoldingRangeProvider = Nothing
            , serverCapabilitiesSelectionRangeProvider = Nothing
            , serverCapabilitiesExecuteCommandProvider = Nothing
            , serverCapabilitiesCallHierarchyProvider = Nothing
            , serverCapabilitiesLinkedEditingRangeProvider = Nothing
            , serverCapabilitiesSemanticTokensProvider = Nothing
            , serverCapabilitiesMonikerProvider = Nothing
            , serverCapabilitiesTypeHierarchyProvider = Nothing
            , serverCapabilitiesInlineValueProvider = Nothing
            , serverCapabilitiesInlayHintProvider = Nothing
            , serverCapabilitiesDiagnosticProvider = Nothing
            , serverCapabilitiesInlineCompletionProvider = Nothing
            , serverCapabilitiesWorkspace = Nothing
            , serverCapabilitiesExperimental = Nothing
            }
          , initializeResultServerInfo = Just ServerInfo
            -- TODO: Provide a way for the library client to configure this
            { serverInfoName = "curry-lsp test server"
            , serverInfoVersion = Just "0.0.1"
            }
          }
        }
      runLoop
