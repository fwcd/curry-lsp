-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ConfigurationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ConfigurationItem
import LSP.Utils.JSON

instance FromJSON ConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            ConfigurationParams { configurationParamsItems = parsedItems }
      _ -> Left ("Unrecognized ConfigurationParams value: " ++ ppJSON j)

data ConfigurationParams = ConfigurationParams { configurationParamsItems :: [ConfigurationItem] }
 deriving (Show,Eq)

