-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCodeActionResolveOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientCodeActionResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCodeActionResolveOptions { clientCodeActionResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientCodeActionResolveOptions value: " ++ ppJSON j)

instance ToJSON ClientCodeActionResolveOptions where
  toJSON x =
    object [(.=) "properties" (clientCodeActionResolveOptionsProperties x)]

instance Default ClientCodeActionResolveOptions where
  def =
    ClientCodeActionResolveOptions { clientCodeActionResolveOptionsProperties = def }

data ClientCodeActionResolveOptions = ClientCodeActionResolveOptions { clientCodeActionResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

