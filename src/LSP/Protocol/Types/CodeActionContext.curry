-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionKind
import LSP.Protocol.Types.CodeActionTriggerKind
import LSP.Protocol.Types.Diagnostic
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeActionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDiagnostics <- lookupFromJSON "diagnostics" vs
           parsedOnly <- lookupMaybeFromJSON "only" vs
           parsedTriggerKind <- lookupMaybeFromJSON "triggerKind" vs
           return
            CodeActionContext { codeActionContextDiagnostics = parsedDiagnostics
                              , codeActionContextOnly = parsedOnly
                              , codeActionContextTriggerKind = parsedTriggerKind }
      _ -> Left ("Unrecognized CodeActionContext value: " ++ ppJSON j)

instance ToJSON CodeActionContext where
  toJSON x =
    object
     [(.=) "diagnostics" (codeActionContextDiagnostics x),  (.?=) "only"
                                                             (codeActionContextOnly
                                                               x),  (.?=)
                                                                     "triggerKind"
                                                                     (codeActionContextTriggerKind
                                                                       x)]

instance Default CodeActionContext where
  def =
    CodeActionContext { codeActionContextDiagnostics = def
                      , codeActionContextOnly = def
                      , codeActionContextTriggerKind = def }

data CodeActionContext = CodeActionContext { codeActionContextDiagnostics :: [Diagnostic]
                                           , codeActionContextOnly :: Maybe [CodeActionKind]
                                           , codeActionContextTriggerKind :: Maybe CodeActionTriggerKind }
 deriving (Show,Eq)

