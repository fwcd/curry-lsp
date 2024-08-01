-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CancelParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           return CancelParams { cancelParamsId = parsedId }
      _ -> Left ("Unrecognized CancelParams value: " ++ ppJSON j)

instance ToJSON CancelParams where
  toJSON x = object [(.=) "id" (cancelParamsId x)]

data CancelParams = CancelParams { cancelParamsId :: Either Int String }
 deriving (Show,Eq)

