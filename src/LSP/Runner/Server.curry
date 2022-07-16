module LSP.Runner.Server
  ( runServerLoop
  ) where

import JSON.Data ( JValue (..) )
import System.IO ( Handle, hPutStrLn, stderr )
import LSP.Protocol.Stream ( readMessage )
import LSP.Protocol.Message ( Request (..) )
import LSP.Protocol.Types
import LSP.Utils.JSON ( FromJSON (..) )

-- | Runs the language server event loop using the given input and output handles.
-- TODO: Add configuration parameter (e.g. for server name, handlers etc.)
runServerLoop :: Handle -> Handle -> IO ()
runServerLoop i o = runLoop
  where
    runLoop = do
      m <- (readMessage i :: IO (Request InitializeParams))
      -- TODO: Do something proper
      hPutStrLn stderr $ show m
      runLoop
