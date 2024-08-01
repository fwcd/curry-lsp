-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressCreateParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressCreateParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken = parsedToken }
      _ ->
        Left ("Unrecognized WorkDoneProgressCreateParams value: " ++ ppJSON j)

data WorkDoneProgressCreateParams = WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken :: ProgressToken }
 deriving (Show,Eq)
