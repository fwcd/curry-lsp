module LSP.Utils.General
  ( lookup'
  ) where

-- | A version of lookup that returns a descriptive error message.
lookup' :: Eq a => String -> [(String, a)] -> Either String a
lookup' k vs = case lookup k vs of
  Just v  -> Right v
  Nothing -> Left $ "Could not find key " ++ k
