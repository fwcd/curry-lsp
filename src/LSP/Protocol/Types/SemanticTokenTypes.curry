-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokenTypes where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokenTypes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "namespace" -> Right SemanticTokenTypesNamespace
         "type" -> Right SemanticTokenTypesType
         "class" -> Right SemanticTokenTypesClass
         "enum" -> Right SemanticTokenTypesEnum
         "interface" -> Right SemanticTokenTypesInterface
         "struct" -> Right SemanticTokenTypesStruct
         "typeParameter" -> Right SemanticTokenTypesTypeParameter
         "parameter" -> Right SemanticTokenTypesParameter
         "variable" -> Right SemanticTokenTypesVariable
         "property" -> Right SemanticTokenTypesProperty
         "enumMember" -> Right SemanticTokenTypesEnumMember
         "event" -> Right SemanticTokenTypesEvent
         "function" -> Right SemanticTokenTypesFunction
         "method" -> Right SemanticTokenTypesMethod
         "macro" -> Right SemanticTokenTypesMacro
         "keyword" -> Right SemanticTokenTypesKeyword
         "modifier" -> Right SemanticTokenTypesModifier
         "comment" -> Right SemanticTokenTypesComment
         "string" -> Right SemanticTokenTypesString
         "number" -> Right SemanticTokenTypesNumber
         "regexp" -> Right SemanticTokenTypesRegexp
         "operator" -> Right SemanticTokenTypesOperator
         "decorator" -> Right SemanticTokenTypesDecorator
         "label" -> Right SemanticTokenTypesLabel
         _ -> Left ("Unrecognized SemanticTokenTypes value: " ++ ppJSON j)

data SemanticTokenTypes = SemanticTokenTypesNamespace
                        | SemanticTokenTypesType
                        | SemanticTokenTypesClass
                        | SemanticTokenTypesEnum
                        | SemanticTokenTypesInterface
                        | SemanticTokenTypesStruct
                        | SemanticTokenTypesTypeParameter
                        | SemanticTokenTypesParameter
                        | SemanticTokenTypesVariable
                        | SemanticTokenTypesProperty
                        | SemanticTokenTypesEnumMember
                        | SemanticTokenTypesEvent
                        | SemanticTokenTypesFunction
                        | SemanticTokenTypesMethod
                        | SemanticTokenTypesMacro
                        | SemanticTokenTypesKeyword
                        | SemanticTokenTypesModifier
                        | SemanticTokenTypesComment
                        | SemanticTokenTypesString
                        | SemanticTokenTypesNumber
                        | SemanticTokenTypesRegexp
                        | SemanticTokenTypesOperator
                        | SemanticTokenTypesDecorator
                        | SemanticTokenTypesLabel
 deriving (Show,Eq,Enum,Bounded,Ord)

