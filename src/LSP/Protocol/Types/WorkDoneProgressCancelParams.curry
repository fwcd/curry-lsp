-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressCancelParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressCancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken = parsedToken }
      _ ->
        Left ("Unrecognized WorkDoneProgressCancelParams value: " ++ ppJSON j)

data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken :: ProgressToken }
 deriving (Show,Eq)

