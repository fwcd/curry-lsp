-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Command where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON Command where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            Command { commandTitle = parsedTitle
                    , commandTooltip = parsedTooltip
                    , commandCommand = parsedCommand
                    , commandArguments = parsedArguments }
      _ -> Left ("Unrecognized Command value: " ++ ppJSON j)

instance ToJSON Command where
  toJSON x =
    object
     [(.=) "title" (commandTitle x),  (.?=) "tooltip"
                                       (commandTooltip x),  (.=) "command"
                                                             (commandCommand
                                                               x),  (.?=)
                                                                     "arguments"
                                                                     (commandArguments
                                                                       x)]

instance Default Command where
  def =
    Command { commandTitle = def
            , commandTooltip = def
            , commandCommand = def
            , commandArguments = def }

data Command = Command { commandTitle :: String
                       , commandTooltip :: Maybe String
                       , commandCommand :: String
                       , commandArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

