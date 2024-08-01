-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ApplyWorkspaceEditResult where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ApplyWorkspaceEditResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedApplied <- lookupFromJSON "applied" vs
           parsedFailureReason <- lookupMaybeFromJSON "failureReason" vs
           parsedFailedChange <- lookupMaybeFromJSON "failedChange" vs
           return
            ApplyWorkspaceEditResult { applyWorkspaceEditResultApplied = parsedApplied
                                     , applyWorkspaceEditResultFailureReason = parsedFailureReason
                                     , applyWorkspaceEditResultFailedChange = parsedFailedChange }
      _ -> Left ("Unrecognized ApplyWorkspaceEditResult value: " ++ ppJSON j)

instance ToJSON ApplyWorkspaceEditResult where
  toJSON x =
    object
     [(.=) "applied" (applyWorkspaceEditResultApplied x),  (.?=)
                                                            "failureReason"
                                                            (applyWorkspaceEditResultFailureReason
                                                              x),  (.?=)
                                                                    "failedChange"
                                                                    (applyWorkspaceEditResultFailedChange
                                                                      x)]

data ApplyWorkspaceEditResult = ApplyWorkspaceEditResult { applyWorkspaceEditResultApplied :: Bool
                                                         , applyWorkspaceEditResultFailureReason :: Maybe String
                                                         , applyWorkspaceEditResultFailedChange :: Maybe Int }
 deriving (Show,Eq)

