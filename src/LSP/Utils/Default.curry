module LSP.Utils.Default
  ( Default (..)
  ) where

class Default a where
  -- | A default value.
  def :: a
