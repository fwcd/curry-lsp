-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionKindDocumentation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionKind
import LSP.Protocol.Types.Command
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeActionKindDocumentation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedCommand <- lookupFromJSON "command" vs
           return
            CodeActionKindDocumentation { codeActionKindDocumentationKind = parsedKind
                                        , codeActionKindDocumentationCommand = parsedCommand }
      _ ->
        Left ("Unrecognized CodeActionKindDocumentation value: " ++ ppJSON j)

instance ToJSON CodeActionKindDocumentation where
  toJSON x =
    object
     [(.=) "kind" (codeActionKindDocumentationKind x),  (.=) "command"
                                                         (codeActionKindDocumentationCommand
                                                           x)]

instance Default CodeActionKindDocumentation where
  def =
    CodeActionKindDocumentation { codeActionKindDocumentationKind = def
                                , codeActionKindDocumentationCommand = def }

data CodeActionKindDocumentation = CodeActionKindDocumentation { codeActionKindDocumentationKind :: CodeActionKind
                                                               , codeActionKindDocumentationCommand :: Command }
 deriving (Show,Eq)

