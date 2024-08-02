-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSymbolKindOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SymbolKind
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientSymbolKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupMaybeFromJSON "valueSet" vs
           return
            ClientSymbolKindOptions { clientSymbolKindOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized ClientSymbolKindOptions value: " ++ ppJSON j)

instance ToJSON ClientSymbolKindOptions where
  toJSON x = object [(.?=) "valueSet" (clientSymbolKindOptionsValueSet x)]

instance Default ClientSymbolKindOptions where
  def = ClientSymbolKindOptions { clientSymbolKindOptionsValueSet = def }

data ClientSymbolKindOptions = ClientSymbolKindOptions { clientSymbolKindOptionsValueSet :: Maybe [SymbolKind] }
 deriving (Show,Eq)

