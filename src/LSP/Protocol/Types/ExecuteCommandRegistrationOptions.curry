-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ExecuteCommandRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedCommands <- lookupFromJSON "commands" vs
           return
            ExecuteCommandRegistrationOptions { executeCommandRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , executeCommandRegistrationOptionsCommands = parsedCommands }
      _ ->
        Left
         ("Unrecognized ExecuteCommandRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON ExecuteCommandRegistrationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (executeCommandRegistrationOptionsWorkDoneProgress x),  (.=) "commands"
                                                                (executeCommandRegistrationOptionsCommands
                                                                  x)]

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions { executeCommandRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , executeCommandRegistrationOptionsCommands :: [String] }
 deriving (Show,Eq)

