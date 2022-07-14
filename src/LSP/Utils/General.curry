module LSP.Utils.General
  ( lookup', fromRight'
  , rightToMaybe, maybeToRight
  , capitalize, uncapitalize
  , replaceSingle
  ) where

import Data.Char ( toUpper, toLower )

-- | A version of fromRight that throws a descriptive error message.
fromRight' :: Either String a -> a
fromRight' e = case e of
  Right x -> x
  Left m  -> error m

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

-- | Uppercases the first character.
capitalize :: String -> String
capitalize [] = []
capitalize (c:cs) = toUpper c : cs

-- | Lowercases the first character.
uncapitalize :: String -> String
uncapitalize [] = []
uncapitalize (c:cs) = toLower c : cs

-- | Replaces an element with a list.
replaceSingle :: Eq a => a -> [a] -> [a] -> [a]
replaceSingle _ _ [] = []
replaceSingle y ys (x:xs) | x == y    = ys ++ xs
                          | otherwise = x : replaceSingle y ys xs
