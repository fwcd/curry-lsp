-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized WorkDoneProgressOptions value: " ++ ppJSON j)

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

