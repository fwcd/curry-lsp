-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left ("Unrecognized WorkDoneProgressParams value: " ++ ppJSON j)

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

