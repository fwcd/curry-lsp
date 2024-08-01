-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeActionKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "" -> Right CodeActionKindEmpty
         "quickfix" -> Right CodeActionKindQuickFix
         "refactor" -> Right CodeActionKindRefactor
         "refactor.extract" -> Right CodeActionKindRefactorExtract
         "refactor.inline" -> Right CodeActionKindRefactorInline
         "refactor.move" -> Right CodeActionKindRefactorMove
         "refactor.rewrite" -> Right CodeActionKindRefactorRewrite
         "source" -> Right CodeActionKindSource
         "source.organizeImports" -> Right CodeActionKindSourceOrganizeImports
         "source.fixAll" -> Right CodeActionKindSourceFixAll
         "notebook" -> Right CodeActionKindNotebook
         _ -> Left ("Unrecognized CodeActionKind value: " ++ ppJSON j)

data CodeActionKind = CodeActionKindEmpty
                    | CodeActionKindQuickFix
                    | CodeActionKindRefactor
                    | CodeActionKindRefactorExtract
                    | CodeActionKindRefactorInline
                    | CodeActionKindRefactorMove
                    | CodeActionKindRefactorRewrite
                    | CodeActionKindSource
                    | CodeActionKindSourceOrganizeImports
                    | CodeActionKindSourceFixAll
                    | CodeActionKindNotebook
 deriving (Show,Eq,Enum,Bounded,Ord)

