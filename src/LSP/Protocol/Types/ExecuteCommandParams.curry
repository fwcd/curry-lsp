-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON ExecuteCommandParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            ExecuteCommandParams { executeCommandParamsWorkDoneToken = parsedWorkDoneToken
                                 , executeCommandParamsCommand = parsedCommand
                                 , executeCommandParamsArguments = parsedArguments }
      _ -> Left ("Unrecognized ExecuteCommandParams value: " ++ ppJSON j)

instance ToJSON ExecuteCommandParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (executeCommandParamsWorkDoneToken x),  (.=)
                                                                     "command"
                                                                     (executeCommandParamsCommand
                                                                       x),  (.?=)
                                                                             "arguments"
                                                                             (executeCommandParamsArguments
                                                                               x)]

data ExecuteCommandParams = ExecuteCommandParams { executeCommandParamsWorkDoneToken :: Maybe ProgressToken
                                                 , executeCommandParamsCommand :: String
                                                 , executeCommandParamsArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

