-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueText where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON InlineValueText where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedText <- lookupFromJSON "text" vs
           return
            InlineValueText { inlineValueTextRange = parsedRange
                            , inlineValueTextText = parsedText }
      _ -> Left ("Unrecognized InlineValueText value: " ++ ppJSON j)

instance ToJSON InlineValueText where
  toJSON x =
    object
     [(.=) "range" (inlineValueTextRange x),  (.=) "text"
                                               (inlineValueTextText x)]

data InlineValueText = InlineValueText { inlineValueTextRange :: Range
                                       , inlineValueTextText :: String }
 deriving (Show,Eq)

