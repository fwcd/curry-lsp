-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticServerCancellationData where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticServerCancellationData where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetriggerRequest <- lookupFromJSON "retriggerRequest" vs
           return
            DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest = parsedRetriggerRequest }
      _ ->
        Left
         ("Unrecognized DiagnosticServerCancellationData value: " ++ ppJSON j)

instance ToJSON DiagnosticServerCancellationData where
  toJSON x =
    object
     [(.=) "retriggerRequest"
       (diagnosticServerCancellationDataRetriggerRequest x)]

data DiagnosticServerCancellationData = DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest :: Bool }
 deriving (Show,Eq)

