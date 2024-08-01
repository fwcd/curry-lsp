-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SelectionRangeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            SelectionRangeOptions { selectionRangeOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized SelectionRangeOptions value: " ++ ppJSON j)

data SelectionRangeOptions = SelectionRangeOptions { selectionRangeOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

