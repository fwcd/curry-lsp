-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSymbolResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientSymbolResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientSymbolResolveOptions { clientSymbolResolveOptionsProperties = parsedProperties }
      _ ->
        Left ("Unrecognized ClientSymbolResolveOptions value: " ++ ppJSON j)

data ClientSymbolResolveOptions = ClientSymbolResolveOptions { clientSymbolResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

