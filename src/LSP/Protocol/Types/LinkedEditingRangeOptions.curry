-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            LinkedEditingRangeOptions { linkedEditingRangeOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized LinkedEditingRangeOptions value: " ++ ppJSON j)

instance ToJSON LinkedEditingRangeOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (linkedEditingRangeOptionsWorkDoneProgress x)]

instance Default LinkedEditingRangeOptions where
  def =
    LinkedEditingRangeOptions { linkedEditingRangeOptionsWorkDoneProgress = def }

data LinkedEditingRangeOptions = LinkedEditingRangeOptions { linkedEditingRangeOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

