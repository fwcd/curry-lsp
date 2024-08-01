-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLink where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON DocumentLink where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedTarget <- lookupMaybeFromJSON "target" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            DocumentLink { documentLinkRange = parsedRange
                         , documentLinkTarget = parsedTarget
                         , documentLinkTooltip = parsedTooltip
                         , documentLinkData = parsedData }
      _ -> Left ("Unrecognized DocumentLink value: " ++ ppJSON j)

data DocumentLink = DocumentLink { documentLinkRange :: Range
                                 , documentLinkTarget :: Maybe Uri
                                 , documentLinkTooltip :: Maybe String
                                 , documentLinkData :: Maybe LSPAny }
 deriving (Show,Eq)

