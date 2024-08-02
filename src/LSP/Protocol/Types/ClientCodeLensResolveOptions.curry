-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCodeLensResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientCodeLensResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCodeLensResolveOptions { clientCodeLensResolveOptionsProperties = parsedProperties }
      _ ->
        Left ("Unrecognized ClientCodeLensResolveOptions value: " ++ ppJSON j)

instance ToJSON ClientCodeLensResolveOptions where
  toJSON x =
    object [(.=) "properties" (clientCodeLensResolveOptionsProperties x)]

instance Default ClientCodeLensResolveOptions where
  def =
    ClientCodeLensResolveOptions { clientCodeLensResolveOptionsProperties = def }

data ClientCodeLensResolveOptions = ClientCodeLensResolveOptions { clientCodeLensResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

