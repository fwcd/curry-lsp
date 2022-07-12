module LSP.Utils.JSON
  ( FromJSON (..)
  , ToJSON (..)
  , stringFromJSON, arrayFromJSON, maybeFromJSON
  , lookupFromJSON, lookupStringFromJSON, lookupMaybeFromJSON
  ) where

import JSON.Data ( JValue (..) )
import JSON.Parser ( parseJSON )
import JSON.Pretty ( ppJSON )
import LSP.Utils.General ( lookup', rightToMaybe )

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

instance FromJSON a => FromJSON [a] where
  fromJSON = arrayFromJSON

instance FromJSON a => FromJSON (Maybe a) where
  fromJSON = Right . maybeFromJSON

instance FromJSON JValue where
  fromJSON = Right

instance ToJSON JValue where
  toJSON = id

-- Parses a string from JSON.
stringFromJSON :: JValue -> Either String String
stringFromJSON j = case j of
  JString s -> Right s
  _ -> Left $ "Expected string but was: " ++ ppJSON j

-- Parses an array from JSON.
arrayFromJSON :: FromJSON a => JValue -> Either String [a]
arrayFromJSON j = case j of
  JArray vs -> mapM fromJSON vs
  _ -> Left $ "Expected string but was: " ++ ppJSON j

-- Parses an optional from JSON.
maybeFromJSON :: FromJSON a => JValue -> Maybe a
maybeFromJSON = rightToMaybe . fromJSON

-- Parses a lookup on a JSON object's properties.
lookupFromJSON :: FromJSON a => String -> [(String, JValue)] -> Either String a
lookupFromJSON k vs = lookup' k vs >>= fromJSON

-- Parses a string lookup on a JSON object's properties.
lookupStringFromJSON :: String -> [(String, JValue)] -> Either String String
lookupStringFromJSON k vs = lookup' k vs >>= stringFromJSON

-- Parses an optional lookup on a JSON object's properties.
lookupMaybeFromJSON :: FromJSON a => String -> [(String, JValue)] -> Either String (Maybe a)
lookupMaybeFromJSON k vs = case lookup k vs of
  Just x  -> fromJSON x
  Nothing -> Right Nothing
