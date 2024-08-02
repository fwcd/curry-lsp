-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            FoldingRangeOptions { foldingRangeOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized FoldingRangeOptions value: " ++ ppJSON j)

instance ToJSON FoldingRangeOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (foldingRangeOptionsWorkDoneProgress x)]

instance Default FoldingRangeOptions where
  def = FoldingRangeOptions { foldingRangeOptionsWorkDoneProgress = def }

data FoldingRangeOptions = FoldingRangeOptions { foldingRangeOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

