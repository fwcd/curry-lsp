-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON CompletionItemKind where
  toJSON x =
    case x of
      CompletionItemKindText -> toJSON 1
      CompletionItemKindMethod -> toJSON 2
      CompletionItemKindFunction -> toJSON 3
      CompletionItemKindConstructor -> toJSON 4
      CompletionItemKindField -> toJSON 5
      CompletionItemKindVariable -> toJSON 6
      CompletionItemKindClass -> toJSON 7
      CompletionItemKindInterface -> toJSON 8
      CompletionItemKindModule -> toJSON 9
      CompletionItemKindProperty -> toJSON 10
      CompletionItemKindUnit -> toJSON 11
      CompletionItemKindValue -> toJSON 12
      CompletionItemKindEnum -> toJSON 13
      CompletionItemKindKeyword -> toJSON 14
      CompletionItemKindSnippet -> toJSON 15
      CompletionItemKindColor -> toJSON 16
      CompletionItemKindFile -> toJSON 17
      CompletionItemKindReference -> toJSON 18
      CompletionItemKindFolder -> toJSON 19
      CompletionItemKindEnumMember -> toJSON 20
      CompletionItemKindConstant -> toJSON 21
      CompletionItemKindStruct -> toJSON 22
      CompletionItemKindEvent -> toJSON 23
      CompletionItemKindOperator -> toJSON 24
      CompletionItemKindTypeParameter -> toJSON 25

instance Default CompletionItemKind where
  def = CompletionItemKindText

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

