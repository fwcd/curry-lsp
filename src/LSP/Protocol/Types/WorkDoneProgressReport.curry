-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressReport where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedCancellable <- lookupMaybeFromJSON "cancellable" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           parsedPercentage <- lookupMaybeFromJSON "percentage" vs
           return
            WorkDoneProgressReport { workDoneProgressReportKind = parsedKind
                                   , workDoneProgressReportCancellable = parsedCancellable
                                   , workDoneProgressReportMessage = parsedMessage
                                   , workDoneProgressReportPercentage = parsedPercentage }
      _ -> Left ("Unrecognized WorkDoneProgressReport value: " ++ ppJSON j)

instance ToJSON WorkDoneProgressReport where
  toJSON x =
    object
     [(.=) "kind" (workDoneProgressReportKind x),  (.?=) "cancellable"
                                                    (workDoneProgressReportCancellable
                                                      x),  (.?=) "message"
                                                            (workDoneProgressReportMessage
                                                              x),  (.?=)
                                                                    "percentage"
                                                                    (workDoneProgressReportPercentage
                                                                      x)]

data WorkDoneProgressReport = WorkDoneProgressReport { workDoneProgressReportKind :: String
                                                     , workDoneProgressReportCancellable :: Maybe Bool
                                                     , workDoneProgressReportMessage :: Maybe String
                                                     , workDoneProgressReportPercentage :: Maybe Int }
 deriving (Show,Eq)

