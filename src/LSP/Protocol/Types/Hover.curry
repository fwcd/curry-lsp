-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Hover where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkedString
import LSP.Protocol.Types.MarkupContent
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON Hover where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContents <- lookupFromJSON "contents" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           return
            Hover { hoverContents = parsedContents, hoverRange = parsedRange }
      _ -> Left ("Unrecognized Hover value: " ++ ppJSON j)

data Hover = Hover { hoverContents :: Either (Either MarkupContent MarkedString) [MarkedString]
                   , hoverRange :: Maybe Range }
 deriving (Show,Eq)

