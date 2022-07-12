module LSP.Utils.JSON
  ( FromJSON (..)
  , ToJSON (..)
  ) where

import JSON.Data ( JValue (..) )
import JSON.Parser ( parseJSON )
import JSON.Pretty ( ppJSON )

class FromJSON a where
  -- | Converts from a JSON value to the type.
  fromJSON :: JValue -> Either String a

  -- | Parses a JSON string to a value of the type.
  fromJSONString :: String -> Either String a
  fromJSONString s = case parseJSON s of
    Just x  -> fromJSON x
    Nothing -> Left $ "Could not parse JSON: " ++ s

class ToJSON a where
  -- | Converts from the type to JSON.
  toJSON :: a -> JValue

  -- | Generates a JSON string from a value of type.
  toJSONString :: a -> String
  toJSONString = ppJSON . toJSON
