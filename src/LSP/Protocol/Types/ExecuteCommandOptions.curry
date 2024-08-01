-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ExecuteCommandOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommands <- lookupFromJSON "commands" vs
           return
            ExecuteCommandOptions { executeCommandOptionsCommands = parsedCommands }
      _ -> Left ("Unrecognized ExecuteCommandOptions value: " ++ ppJSON j)

data ExecuteCommandOptions = ExecuteCommandOptions { executeCommandOptionsCommands :: [String] }
 deriving (Show,Eq)

