-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized WorkDoneProgressOptions value: " ++ ppJSON j)

instance ToJSON WorkDoneProgressOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (workDoneProgressOptionsWorkDoneProgress x)]

instance Default WorkDoneProgressOptions where
  def =
    WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress = def }

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

