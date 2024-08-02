module LSP.Protocol.Support
  ( Uri (..)
  , DocumentUri
  , LSPAny
  , JValue (..)
  ) where

import JSON.Data ( JValue (..) )
import LSP.Utils.Default ( Default (..) )
import LSP.Utils.JSON ( FromJSON (..), ToJSON (..) )

-- | A uniform resource identifier (URI).
newtype Uri = Uri { getUri :: String }
  deriving (Show, Eq, Ord)

-- | A URI pointing to a document.
type DocumentUri = Uri

-- | An arbitrary JSON value.
type LSPAny = JValue

instance FromJSON Uri where
  fromJSON = (Uri <$>) . fromJSON

instance ToJSON Uri where
  toJSON = toJSON . getUri

instance Default Uri where
  def = Uri "dummy://"
