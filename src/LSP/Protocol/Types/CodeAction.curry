-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeAction where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.CodeActionDisabled
import LSP.Protocol.Types.CodeActionKind
import LSP.Protocol.Types.Command
import LSP.Protocol.Types.Diagnostic
import LSP.Protocol.Types.WorkspaceEdit
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeAction where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedDiagnostics <- lookupMaybeFromJSON "diagnostics" vs
           parsedIsPreferred <- lookupMaybeFromJSON "isPreferred" vs
           parsedDisabled <- lookupMaybeFromJSON "disabled" vs
           parsedEdit <- lookupMaybeFromJSON "edit" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CodeAction { codeActionTitle = parsedTitle
                       , codeActionKind = parsedKind
                       , codeActionDiagnostics = parsedDiagnostics
                       , codeActionIsPreferred = parsedIsPreferred
                       , codeActionDisabled = parsedDisabled
                       , codeActionEdit = parsedEdit
                       , codeActionCommand = parsedCommand
                       , codeActionData = parsedData }
      _ -> Left ("Unrecognized CodeAction value: " ++ ppJSON j)

instance ToJSON CodeAction where
  toJSON x =
    object
     [(.=) "title" (codeActionTitle x),  (.?=) "kind"
                                          (codeActionKind x),  (.?=)
                                                                "diagnostics"
                                                                (codeActionDiagnostics
                                                                  x),  (.?=)
                                                                        "isPreferred"
                                                                        (codeActionIsPreferred
                                                                          x),  (.?=)
                                                                                "disabled"
                                                                                (codeActionDisabled
                                                                                  x),  (.?=)
                                                                                        "edit"
                                                                                        (codeActionEdit
                                                                                          x),  (.?=)
                                                                                                "command"
                                                                                                (codeActionCommand
                                                                                                  x),  (.?=)
                                                                                                        "data"
                                                                                                        (codeActionData
                                                                                                          x)]

instance Default CodeAction where
  def =
    CodeAction { codeActionTitle = def
               , codeActionKind = def
               , codeActionDiagnostics = def
               , codeActionIsPreferred = def
               , codeActionDisabled = def
               , codeActionEdit = def
               , codeActionCommand = def
               , codeActionData = def }

data CodeAction = CodeAction { codeActionTitle :: String
                             , codeActionKind :: Maybe CodeActionKind
                             , codeActionDiagnostics :: Maybe [Diagnostic]
                             , codeActionIsPreferred :: Maybe Bool
                             , codeActionDisabled :: Maybe CodeActionDisabled
                             , codeActionEdit :: Maybe WorkspaceEdit
                             , codeActionCommand :: Maybe Command
                             , codeActionData :: Maybe LSPAny }
 deriving (Show,Eq)

