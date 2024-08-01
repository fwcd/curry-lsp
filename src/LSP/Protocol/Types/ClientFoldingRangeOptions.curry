-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientFoldingRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientFoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCollapsedText <- lookupMaybeFromJSON "collapsedText" vs
           return
            ClientFoldingRangeOptions { clientFoldingRangeOptionsCollapsedText = parsedCollapsedText }
      _ -> Left ("Unrecognized ClientFoldingRangeOptions value: " ++ ppJSON j)

instance ToJSON ClientFoldingRangeOptions where
  toJSON x =
    object [(.?=) "collapsedText" (clientFoldingRangeOptionsCollapsedText x)]

data ClientFoldingRangeOptions = ClientFoldingRangeOptions { clientFoldingRangeOptionsCollapsedText :: Maybe Bool }
 deriving (Show,Eq)

