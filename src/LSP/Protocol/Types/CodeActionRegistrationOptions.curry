-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionKind
import LSP.Protocol.Types.CodeActionKindDocumentation
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON CodeActionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedCodeActionKinds <- lookupMaybeFromJSON "codeActionKinds" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeActionRegistrationOptions { codeActionRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                          , codeActionRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                          , codeActionRegistrationOptionsCodeActionKinds = parsedCodeActionKinds
                                          , codeActionRegistrationOptionsDocumentation = parsedDocumentation
                                          , codeActionRegistrationOptionsResolveProvider = parsedResolveProvider }
      _ ->
        Left
         ("Unrecognized CodeActionRegistrationOptions value: " ++ ppJSON j)

instance ToJSON CodeActionRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (codeActionRegistrationOptionsDocumentSelector x),  (.?=)
                                                            "workDoneProgress"
                                                            (codeActionRegistrationOptionsWorkDoneProgress
                                                              x),  (.?=)
                                                                    "codeActionKinds"
                                                                    (codeActionRegistrationOptionsCodeActionKinds
                                                                      x),  (.?=)
                                                                            "documentation"
                                                                            (codeActionRegistrationOptionsDocumentation
                                                                              x),  (.?=)
                                                                                    "resolveProvider"
                                                                                    (codeActionRegistrationOptionsResolveProvider
                                                                                      x)]

data CodeActionRegistrationOptions = CodeActionRegistrationOptions { codeActionRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                   , codeActionRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                   , codeActionRegistrationOptionsCodeActionKinds :: Maybe [CodeActionKind]
                                                                   , codeActionRegistrationOptionsDocumentation :: Maybe [CodeActionKindDocumentation]
                                                                   , codeActionRegistrationOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

