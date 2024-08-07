-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON MonikerOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            MonikerOptions { monikerOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized MonikerOptions value: " ++ ppJSON j)

instance ToJSON MonikerOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (monikerOptionsWorkDoneProgress x)]

instance Default MonikerOptions where
  def = MonikerOptions { monikerOptionsWorkDoneProgress = def }

data MonikerOptions = MonikerOptions { monikerOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

