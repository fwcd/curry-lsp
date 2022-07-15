module LSP.Protocol.Support
  ( DocumentUri (..)
  , LSPAny
  , JValue (..)
  ) where

import JSON.Data ( JValue (..) )
import LSP.Utils.JSON ( FromJSON (..), stringFromJSON )

-- | A document URI.
newtype DocumentUri = DocumentUri { getDocumentUri :: String }
  deriving (Show, Eq, Ord)

-- | An arbitrary JSON value.
type LSPAny = JValue

instance FromJSON DocumentUri where
  fromJSON = (DocumentUri <$>) . stringFromJSON
