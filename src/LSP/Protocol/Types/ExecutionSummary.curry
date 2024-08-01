-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecutionSummary where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ExecutionSummary where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedExecutionOrder <- lookupFromJSON "executionOrder" vs
           parsedSuccess <- lookupMaybeFromJSON "success" vs
           return
            ExecutionSummary { executionSummaryExecutionOrder = parsedExecutionOrder
                             , executionSummarySuccess = parsedSuccess }
      _ -> Left ("Unrecognized ExecutionSummary value: " ++ ppJSON j)

data ExecutionSummary = ExecutionSummary { executionSummaryExecutionOrder :: Int
                                         , executionSummarySuccess :: Maybe Bool }
 deriving (Show,Eq)

