-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionKind
import LSP.Protocol.Types.CodeActionKindDocumentation
import LSP.Utils.JSON

instance FromJSON CodeActionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCodeActionKinds <- lookupMaybeFromJSON "codeActionKinds" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeActionOptions { codeActionOptionsCodeActionKinds = parsedCodeActionKinds
                              , codeActionOptionsDocumentation = parsedDocumentation
                              , codeActionOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized CodeActionOptions value: " ++ ppJSON j)

data CodeActionOptions = CodeActionOptions { codeActionOptionsCodeActionKinds :: Maybe [CodeActionKind]
                                           , codeActionOptionsDocumentation :: Maybe [CodeActionKindDocumentation]
                                           , codeActionOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

