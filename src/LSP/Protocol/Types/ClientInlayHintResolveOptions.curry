-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientInlayHintResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientInlayHintResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientInlayHintResolveOptions value: " ++ ppJSON j)

data ClientInlayHintResolveOptions = ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

