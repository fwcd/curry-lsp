-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientInlayHintResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON ClientInlayHintResolveOptions where
  toJSON x =
    object [(.=) "properties" (clientInlayHintResolveOptionsProperties x)]

instance Default ClientInlayHintResolveOptions where
  def =
    ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties = def }

data ClientInlayHintResolveOptions = ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

