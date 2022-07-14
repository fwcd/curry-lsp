module LSP.Protocol.Support
  ( DocumentUri (..)
  ) where

import JSON.Data ( JValue (..) )

-- | A document URI.
newtype DocumentUri = DocumentUri { getDocumentUri :: String }

-- | An arbitrary JSON value.
type LSPAny = JValue
