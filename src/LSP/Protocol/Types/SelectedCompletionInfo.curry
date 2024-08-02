-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectedCompletionInfo where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SelectedCompletionInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedText <- lookupFromJSON "text" vs
           return
            SelectedCompletionInfo { selectedCompletionInfoRange = parsedRange
                                   , selectedCompletionInfoText = parsedText }
      _ -> Left ("Unrecognized SelectedCompletionInfo value: " ++ ppJSON j)

instance ToJSON SelectedCompletionInfo where
  toJSON x =
    object
     [(.=) "range" (selectedCompletionInfoRange x),  (.=) "text"
                                                      (selectedCompletionInfoText
                                                        x)]

instance Default SelectedCompletionInfo where
  def =
    SelectedCompletionInfo { selectedCompletionInfoRange = def
                           , selectedCompletionInfoText = def }

data SelectedCompletionInfo = SelectedCompletionInfo { selectedCompletionInfoRange :: Range
                                                     , selectedCompletionInfoText :: String }
 deriving (Show,Eq)

