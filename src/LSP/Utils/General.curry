module LSP.Utils.General
  ( forM_
  , lookup', fromJust', fromRight'
  , rightToMaybe, maybeToRight
  , capitalize, uncapitalize
  , replace, replaceSingle
  , unions, unionMap
  , (<.$>), (<$.>), (<<$>>)
  , keyOn, nubOrdOn
  ) where

import Data.Char ( toUpper, toLower )
import qualified Data.Set as S

-- | Flipped version of mapM_.
forM_ :: Monad m => [a] -> (a -> m b) -> m ()
forM_ = flip mapM_

-- | A version of fromJust that throws a descriptive error message.
fromJust' :: String -> Maybe a -> a
fromJust' m v = case v of
  Just x  -> x
  Nothing -> error m

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

-- | Replaces an element with another.
replace :: Eq a => a -> a -> [a] -> [a]
replace x y = fmap $ \x' -> if x == x' then y else x'

-- | Replaces an element with a list.
replaceSingle :: Eq a => a -> [a] -> [a] -> [a]
replaceSingle _ _ [] = []
replaceSingle y ys (x:xs) | x == y    = ys ++ xs
                          | otherwise = x : replaceSingle y ys xs

-- | The union over all sets.
unions :: Ord a => [S.Set a] -> S.Set a
unions = foldr S.union S.empty

-- | Maps and forms a union. Analogous to concatMap for lists.
unionMap :: Ord b => (a -> S.Set b) -> [a] -> S.Set b
unionMap f = unions . map f

-- | Maps over the first element of a tuple.
(<.$>) :: Functor f => (a -> c) -> f (a, b) -> f (c, b)
(<.$>) f = ((\(x, y) -> (f x, y)) <$>)

-- | Maps over the second element of a tuple.
(<$.>) :: Functor f => (b -> c) -> f (a, b) -> f (a, c)
(<$.>) f = ((\(x, y) -> (x, f y)) <$>)

-- | Map over nested functors. Alias for `fmap . fmap` (or `fmap fmap fmap`).
(<<$>>) :: (Functor f, Functor g) => (a -> b) -> f (g a) -> f (g b)
(<<$>>) = fmap . fmap

-- | Associates the given value with the given key.
keyOn :: (a -> k) -> a -> (k, a)
keyOn f x = (f x, x)

-- Source: https://hackage.haskell.org/package/containers-0.7/docs/src/Data.Containers.ListUtils.html#nubOrdOn
-- License: BSD-style ((c) Gershom Bazerman 2018)

-- | Removes duplicates from the given list by comparing the values after the given projection.
nubOrdOn :: Ord k => (a -> k) -> [a] -> [a]
nubOrdOn f xs = nubOrdOnExcluding f S.empty xs

nubOrdOnExcluding :: Ord k => (a -> k) -> S.Set k -> [a] -> [a]
nubOrdOnExcluding f = go
  where
    go _ [] = []
    go s (x:xs)
      | fx `S.member` s = go s xs
      | otherwise = x : go (S.insert fx s) xs
      where fx = f x
