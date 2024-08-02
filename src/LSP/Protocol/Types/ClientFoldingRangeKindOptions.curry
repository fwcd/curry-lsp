-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientFoldingRangeKindOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FoldingRangeKind
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientFoldingRangeKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupMaybeFromJSON "valueSet" vs
           return
            ClientFoldingRangeKindOptions { clientFoldingRangeKindOptionsValueSet = parsedValueSet }
      _ ->
        Left
         ("Unrecognized ClientFoldingRangeKindOptions value: " ++ ppJSON j)

instance ToJSON ClientFoldingRangeKindOptions where
  toJSON x =
    object [(.?=) "valueSet" (clientFoldingRangeKindOptionsValueSet x)]

instance Default ClientFoldingRangeKindOptions where
  def =
    ClientFoldingRangeKindOptions { clientFoldingRangeKindOptionsValueSet = def }

data ClientFoldingRangeKindOptions = ClientFoldingRangeKindOptions { clientFoldingRangeKindOptionsValueSet :: Maybe [FoldingRangeKind] }
 deriving (Show,Eq)

