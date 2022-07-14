module LSP.Protocol.Support
  ( DocumentUri (..)
  , LSPAny
  , JValue (..)
  ) where

import JSON.Data ( JValue (..) )

-- | A document URI.
newtype DocumentUri = DocumentUri { getDocumentUri :: String }

-- | An arbitrary JSON value.
type LSPAny = JValue
