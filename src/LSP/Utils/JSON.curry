module LSP.Utils.JSON
  ( FromJSON (..)
  , ToJSON (..)
  , stringFromJSON, arrayFromJSON, objectFromJSON, maybeFromJSON, boolFromJSON, integralFromJSON, fractionalFromJSON
  , lookupFromJSON, lookupObjectFromJSON, lookupMaybeFromJSON
  , lookupPathFromJSON
  ) where

import JSON.Data ( JValue (..) )
import JSON.Parser ( parseJSON )
import JSON.Pretty ( ppJSON )
import LSP.Utils.General ( lookup', rightToMaybe )

class FromJSON a where
  -- | Converts from a JSON value to the type.
  fromJSON :: JValue -> Either String a

  -- | Converts from a JSON value to the list type.
  -- Useful for providing a separate overload for strings and other arrays,
  -- similar to how showList and show.
  listFromJSON :: JValue -> Either String [a]
  listFromJSON = arrayFromJSON

  -- | Parses a JSON string to a value of the type.
  fromJSONString :: String -> Either String a
  fromJSONString s = case parseJSON s of
    Just x  -> fromJSON x
    Nothing -> Left $ "Could not parse JSON: " ++ s

class ToJSON a where
  -- | Converts from the type to JSON.
  toJSON :: a -> JValue

  -- | Converts from the list type to JSON.
  listToJSON :: [a] -> JValue
  listToJSON = arrayToJSON

  -- | Generates a JSON string from a value of type.
  toJSONString :: a -> String
  toJSONString = ppJSON . toJSON

instance FromJSON Bool where
  fromJSON = boolFromJSON

instance FromJSON Int where
  fromJSON = integralFromJSON

instance FromJSON Float where
  fromJSON = fractionalFromJSON

instance FromJSON a => FromJSON [a] where
  fromJSON = listFromJSON

instance ToJSON a => ToJSON [a] where
  toJSON = listToJSON

instance FromJSON a => FromJSON (Maybe a) where
  fromJSON = maybeFromJSON

instance ToJSON a => ToJSON (Maybe a) where
  toJSON = maybeToJSON

instance (FromJSON a, FromJSON b) => FromJSON (Either a b) where
  fromJSON = eitherFromJSON

instance (ToJSON a, ToJSON b) => ToJSON (Either a b) where
  toJSON = eitherToJSON

instance FromJSON JValue where
  fromJSON = Right

instance ToJSON JValue where
  toJSON = id

instance FromJSON () where
  fromJSON _ = Right ()

instance ToJSON () where
  toJSON _ = JObject []

-- NOTE: Tuples assume a 'flat' representation where all properties are merged
-- This is useful for LSP's 'and' types but may be surprising for other applications (a
-- more standard representation would e.g. be heterogeneous JSON arrays).

instance (FromJSON a, FromJSON b) => FromJSON (a, b) where
  fromJSON j = (,) <$> fromJSON j <*> fromJSON j

instance (FromJSON a, FromJSON b, FromJSON c) => FromJSON (a, b, c) where
  fromJSON j = (,,) <$> fromJSON j <*> fromJSON j <*> fromJSON j

instance (FromJSON a, FromJSON b, FromJSON c, FromJSON d) => FromJSON (a, b, c, d) where
  fromJSON j = (,,,) <$> fromJSON j <*> fromJSON j <*> fromJSON j <*> fromJSON j

instance FromJSON Char where
  fromJSON j = case j of
    JString [c] -> Right c
    _           -> Left $ "Expected char but was: " ++ ppJSON j
  
  listFromJSON = stringFromJSON

instance ToJSON Char where
  toJSON c = JString [c]

  listToJSON = stringToJSON

-- Parses a boolean value from JSON.
boolFromJSON :: JValue -> Either String Bool
boolFromJSON j = case j of
  JTrue  -> Right True
  JFalse -> Right False
  _ -> Left $ "Expected boolean but was: " ++ ppJSON j

-- Parses an integral value from JSON.
integralFromJSON :: Integral a => JValue -> Either String a
integralFromJSON j = case j of
  JNumber f -> Right $ round f
  _ -> Left $ "Expected integral but was: " ++ ppJSON j

-- Parses a fractional value from JSON.
fractionalFromJSON :: Fractional a => JValue -> Either String a
fractionalFromJSON j = case j of
  JNumber f -> Right $ fromFloat f
  _ -> Left $ "Expected fractional but was: " ++ ppJSON j

-- Parses a string from JSON.
stringFromJSON :: JValue -> Either String String
stringFromJSON j = case j of
  JString s -> Right s
  _ -> Left $ "Expected string but was: " ++ ppJSON j

-- Converts a string to JSON.
stringToJSON :: String -> JValue
stringToJSON = JString

-- Parses an object from JSON.
objectFromJSON :: FromJSON a => JValue -> Either String [(String, a)]
objectFromJSON j = case j of
  JObject vs -> mapM (\(k, v) -> (\x -> (k, x)) <$> fromJSON v) vs
  _ -> Left $ "Expected object but was: " ++ ppJSON j

-- Parses an array from JSON.
arrayFromJSON :: FromJSON a => JValue -> Either String [a]
arrayFromJSON j = case j of
  JArray vs -> mapM fromJSON vs
  _ -> Left $ "Expected array but was: " ++ ppJSON j

-- Converts an array to JSON.
arrayToJSON :: ToJSON a => [a] -> JValue
arrayToJSON = JArray . (toJSON <$>)

-- Parses an optional from JSON.
maybeFromJSON :: FromJSON a => JValue -> Either String (Maybe a)
maybeFromJSON j = case j of
  JNull -> Right Nothing
  _     -> Just <$> fromJSON j

-- Converts an optional to JSON.
maybeToJSON :: ToJSON a => Maybe a -> JValue
maybeToJSON v = case v of
  Just x  -> toJSON x
  Nothing -> JNull

-- Parses an alternative from JSON.
eitherFromJSON :: (FromJSON a, FromJSON b) => JValue -> Either String (Either a b)
eitherFromJSON j = case fromJSON j of
  Right x -> Right $ Left x
  Left _  -> Right <$> fromJSON j

-- Converts an alternative to JSON.
eitherToJSON :: (ToJSON a, ToJSON b) => Either a b -> JValue
eitherToJSON e = case e of
  Left x  -> toJSON x
  Right x -> toJSON x

-- Parses a lookup on a JSON object's properties.
lookupFromJSON :: FromJSON a => String -> [(String, JValue)] -> Either String a
lookupFromJSON k vs = lookup' k vs >>= fromJSON

-- Parses a path lookup on a JSON object's properties.
lookupPathFromJSON :: FromJSON a => [String] -> [(String, JValue)] -> Either String a
lookupPathFromJSON path vs = case path of
  []     -> Left $ "Cannot look up empty path"
  [k]    -> lookupFromJSON k vs
  (k:ks) -> lookupObjectFromJSON k vs >>= lookupPathFromJSON ks

-- Parses an object lookup on a JSON object's properties.
lookupObjectFromJSON :: FromJSON a => String -> [(String, JValue)] -> Either String [(String, a)]
lookupObjectFromJSON k vs = lookup' k vs >>= objectFromJSON

-- Parses an optional lookup on a JSON object's properties.
lookupMaybeFromJSON :: FromJSON a => String -> [(String, JValue)] -> Either String (Maybe a)
lookupMaybeFromJSON k vs = case lookup k vs of
  Just x  -> fromJSON x
  Nothing -> Right Nothing
