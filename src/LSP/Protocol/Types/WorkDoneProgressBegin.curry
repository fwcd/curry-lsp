-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressBegin where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressBegin where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedTitle <- lookupFromJSON "title" vs
           parsedCancellable <- lookupMaybeFromJSON "cancellable" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           parsedPercentage <- lookupMaybeFromJSON "percentage" vs
           return
            WorkDoneProgressBegin { workDoneProgressBeginKind = parsedKind
                                  , workDoneProgressBeginTitle = parsedTitle
                                  , workDoneProgressBeginCancellable = parsedCancellable
                                  , workDoneProgressBeginMessage = parsedMessage
                                  , workDoneProgressBeginPercentage = parsedPercentage }
      _ -> Left ("Unrecognized WorkDoneProgressBegin value: " ++ ppJSON j)

data WorkDoneProgressBegin = WorkDoneProgressBegin { workDoneProgressBeginKind :: String
                                                   , workDoneProgressBeginTitle :: String
                                                   , workDoneProgressBeginCancellable :: Maybe Bool
                                                   , workDoneProgressBeginMessage :: Maybe String
                                                   , workDoneProgressBeginPercentage :: Maybe Int }
 deriving (Show,Eq)

