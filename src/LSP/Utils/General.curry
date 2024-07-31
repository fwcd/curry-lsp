module LSP.Utils.General
  ( forM_
  , lookup', fromJust', fromRight'
  , rightToMaybe, maybeToRight
  , capitalize, uncapitalize
  , replace, replaceSingle
  , (<.$>), (<$.>)
  ) where

import Data.Char ( toUpper, toLower )

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

-- | Maps over the first element of a tuple.
(<.$>) :: Functor f => (a -> c) -> f (a, b) -> f (c, b)
(<.$>) f = ((\(x, y) -> (f x, y)) <$>)

-- | Maps over the second element of a tuple.
(<$.>) :: Functor f => (b -> c) -> f (a, b) -> f (a, c)
(<$.>) f = ((\(x, y) -> (x, f y)) <$>)
