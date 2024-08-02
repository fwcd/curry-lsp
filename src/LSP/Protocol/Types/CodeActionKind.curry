-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON CodeActionKind where
  toJSON x =
    case x of
      CodeActionKindEmpty -> toJSON ""
      CodeActionKindQuickFix -> toJSON "quickfix"
      CodeActionKindRefactor -> toJSON "refactor"
      CodeActionKindRefactorExtract -> toJSON "refactor.extract"
      CodeActionKindRefactorInline -> toJSON "refactor.inline"
      CodeActionKindRefactorMove -> toJSON "refactor.move"
      CodeActionKindRefactorRewrite -> toJSON "refactor.rewrite"
      CodeActionKindSource -> toJSON "source"
      CodeActionKindSourceOrganizeImports -> toJSON "source.organizeImports"
      CodeActionKindSourceFixAll -> toJSON "source.fixAll"
      CodeActionKindNotebook -> toJSON "notebook"

instance Default CodeActionKind where
  def = CodeActionKindEmpty

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

