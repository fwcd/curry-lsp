-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON ExecuteCommandParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            ExecuteCommandParams { executeCommandParamsCommand = parsedCommand
                                 , executeCommandParamsArguments = parsedArguments }
      _ -> Left ("Unrecognized ExecuteCommandParams value: " ++ ppJSON j)

data ExecuteCommandParams = ExecuteCommandParams { executeCommandParamsCommand :: String
                                                 , executeCommandParamsArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

