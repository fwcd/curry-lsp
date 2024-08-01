-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CompletionItemKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionItemKindText
         2 -> Right CompletionItemKindMethod
         3 -> Right CompletionItemKindFunction
         4 -> Right CompletionItemKindConstructor
         5 -> Right CompletionItemKindField
         6 -> Right CompletionItemKindVariable
         7 -> Right CompletionItemKindClass
         8 -> Right CompletionItemKindInterface
         9 -> Right CompletionItemKindModule
         10 -> Right CompletionItemKindProperty
         11 -> Right CompletionItemKindUnit
         12 -> Right CompletionItemKindValue
         13 -> Right CompletionItemKindEnum
         14 -> Right CompletionItemKindKeyword
         15 -> Right CompletionItemKindSnippet
         16 -> Right CompletionItemKindColor
         17 -> Right CompletionItemKindFile
         18 -> Right CompletionItemKindReference
         19 -> Right CompletionItemKindFolder
         20 -> Right CompletionItemKindEnumMember
         21 -> Right CompletionItemKindConstant
         22 -> Right CompletionItemKindStruct
         23 -> Right CompletionItemKindEvent
         24 -> Right CompletionItemKindOperator
         25 -> Right CompletionItemKindTypeParameter
         _ -> Left ("Unrecognized CompletionItemKind value: " ++ ppJSON j)

data CompletionItemKind = CompletionItemKindText
                        | CompletionItemKindMethod
                        | CompletionItemKindFunction
                        | CompletionItemKindConstructor
                        | CompletionItemKindField
                        | CompletionItemKindVariable
                        | CompletionItemKindClass
                        | CompletionItemKindInterface
                        | CompletionItemKindModule
                        | CompletionItemKindProperty
                        | CompletionItemKindUnit
                        | CompletionItemKindValue
                        | CompletionItemKindEnum
                        | CompletionItemKindKeyword
                        | CompletionItemKindSnippet
                        | CompletionItemKindColor
                        | CompletionItemKindFile
                        | CompletionItemKindReference
                        | CompletionItemKindFolder
                        | CompletionItemKindEnumMember
                        | CompletionItemKindConstant
                        | CompletionItemKindStruct
                        | CompletionItemKindEvent
                        | CompletionItemKindOperator
                        | CompletionItemKindTypeParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

