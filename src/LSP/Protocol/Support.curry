module LSP.Protocol.Support
  ( DocumentUri (..)
  , LSPAny
  , JValue (..)
  ) where

import JSON.Data ( JValue (..) )
import LSP.Utils.JSON ( FromJSON (..), stringFromJSON )

-- | A uniform resource identifier (URI).
newtype Uri = Uri { getUri :: String }
  deriving (Show, Eq, Ord)

-- | A URI pointing to a document.
type DocumentUri = Uri

-- | An arbitrary JSON value.
type LSPAny = JValue

instance FromJSON DocumentUri where
  fromJSON = (DocumentUri <$>) . stringFromJSON
