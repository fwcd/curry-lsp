module LSP.Utils.General
  ( lookup'
  , rightToMaybe, maybeToRight
  ) where

-- | A version of lookup that returns a descriptive error message.
lookup' :: Eq a => String -> [(String, a)] -> Either String a
lookup' k = maybeToRight ("Could not find key '" ++ k ++ "'") . lookup k

-- | Converts an Either to a Maybe.
rightToMaybe :: Either a b -> Maybe b
rightToMaybe e = case e of
  Right x -> Just x
  Left _  -> Nothing

-- | Converts a Maybe to an Either.
maybeToRight :: a -> Maybe b -> Either a b
maybeToRight d m = case m of
  Just x  -> Right x
  Nothing -> Left d
