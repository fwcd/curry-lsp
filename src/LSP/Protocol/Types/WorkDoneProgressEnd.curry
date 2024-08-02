-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkDoneProgressEnd where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkDoneProgressEnd where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           return
            WorkDoneProgressEnd { workDoneProgressEndKind = parsedKind
                                , workDoneProgressEndMessage = parsedMessage }
      _ -> Left ("Unrecognized WorkDoneProgressEnd value: " ++ ppJSON j)

instance ToJSON WorkDoneProgressEnd where
  toJSON x =
    object
     [(.=) "kind" (workDoneProgressEndKind x),  (.?=) "message"
                                                 (workDoneProgressEndMessage
                                                   x)]

instance Default WorkDoneProgressEnd where
  def =
    WorkDoneProgressEnd { workDoneProgressEndKind = def
                        , workDoneProgressEndMessage = def }

data WorkDoneProgressEnd = WorkDoneProgressEnd { workDoneProgressEndKind :: String
                                               , workDoneProgressEndMessage :: Maybe String }
 deriving (Show,Eq)

