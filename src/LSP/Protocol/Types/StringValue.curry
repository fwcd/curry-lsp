-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.StringValue where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON StringValue where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            StringValue { stringValueKind = parsedKind
                        , stringValueValue = parsedValue }
      _ -> Left ("Unrecognized StringValue value: " ++ ppJSON j)

instance ToJSON StringValue where
  toJSON x =
    object
     [(.=) "kind" (stringValueKind x),  (.=) "value" (stringValueValue x)]

data StringValue = StringValue { stringValueKind :: String
                               , stringValueValue :: String }
 deriving (Show,Eq)

