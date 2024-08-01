-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InitializeError where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InitializeError where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetry <- lookupFromJSON "retry" vs
           return InitializeError { initializeErrorRetry = parsedRetry }
      _ -> Left ("Unrecognized InitializeError value: " ++ ppJSON j)

data InitializeError = InitializeError { initializeErrorRetry :: Bool }
 deriving (Show,Eq)

