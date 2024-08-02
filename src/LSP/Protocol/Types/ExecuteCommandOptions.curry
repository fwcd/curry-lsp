-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ExecuteCommandOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedCommands <- lookupFromJSON "commands" vs
           return
            ExecuteCommandOptions { executeCommandOptionsWorkDoneProgress = parsedWorkDoneProgress
                                  , executeCommandOptionsCommands = parsedCommands }
      _ -> Left ("Unrecognized ExecuteCommandOptions value: " ++ ppJSON j)

instance ToJSON ExecuteCommandOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (executeCommandOptionsWorkDoneProgress x),  (.=) "commands"
                                                    (executeCommandOptionsCommands
                                                      x)]

instance Default ExecuteCommandOptions where
  def =
    ExecuteCommandOptions { executeCommandOptionsWorkDoneProgress = def
                          , executeCommandOptionsCommands = def }

data ExecuteCommandOptions = ExecuteCommandOptions { executeCommandOptionsWorkDoneProgress :: Maybe Bool
                                                   , executeCommandOptionsCommands :: [String] }
 deriving (Show,Eq)

