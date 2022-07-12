module LSP.Utils.JSON
  ( FromJSON (..)
  , ToJSON (..)
  ) where

class FromJSON a where
  -- | Converts from a JSON value to the type.
  fromJSON :: JValue -> Either String a

class ToJSON a where
  -- | Converts from the type to JSON.
  toJSON :: a -> JValue

