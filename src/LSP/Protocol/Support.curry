module LSP.Protocol.Support
  ( DocumentUri (..)
  ) where

newtype DocumentUri = DocumentUri { getDocumentUri :: String }
