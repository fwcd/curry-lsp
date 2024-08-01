-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSymbolTagOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SymbolTag
import LSP.Utils.JSON

instance FromJSON ClientSymbolTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientSymbolTagOptions { clientSymbolTagOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized ClientSymbolTagOptions value: " ++ ppJSON j)

data ClientSymbolTagOptions = ClientSymbolTagOptions { clientSymbolTagOptionsValueSet :: [SymbolTag] }
 deriving (Show,Eq)

