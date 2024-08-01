-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SymbolKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SymbolKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SymbolKindFile
         2 -> Right SymbolKindModule
         3 -> Right SymbolKindNamespace
         4 -> Right SymbolKindPackage
         5 -> Right SymbolKindClass
         6 -> Right SymbolKindMethod
         7 -> Right SymbolKindProperty
         8 -> Right SymbolKindField
         9 -> Right SymbolKindConstructor
         10 -> Right SymbolKindEnum
         11 -> Right SymbolKindInterface
         12 -> Right SymbolKindFunction
         13 -> Right SymbolKindVariable
         14 -> Right SymbolKindConstant
         15 -> Right SymbolKindString
         16 -> Right SymbolKindNumber
         17 -> Right SymbolKindBoolean
         18 -> Right SymbolKindArray
         19 -> Right SymbolKindObject
         20 -> Right SymbolKindKey
         21 -> Right SymbolKindNull
         22 -> Right SymbolKindEnumMember
         23 -> Right SymbolKindStruct
         24 -> Right SymbolKindEvent
         25 -> Right SymbolKindOperator
         26 -> Right SymbolKindTypeParameter
         _ -> Left ("Unrecognized SymbolKind value: " ++ ppJSON j)

instance ToJSON SymbolKind where
  toJSON x =
    case x of
      SymbolKindFile -> toJSON 1
      SymbolKindModule -> toJSON 2
      SymbolKindNamespace -> toJSON 3
      SymbolKindPackage -> toJSON 4
      SymbolKindClass -> toJSON 5
      SymbolKindMethod -> toJSON 6
      SymbolKindProperty -> toJSON 7
      SymbolKindField -> toJSON 8
      SymbolKindConstructor -> toJSON 9
      SymbolKindEnum -> toJSON 10
      SymbolKindInterface -> toJSON 11
      SymbolKindFunction -> toJSON 12
      SymbolKindVariable -> toJSON 13
      SymbolKindConstant -> toJSON 14
      SymbolKindString -> toJSON 15
      SymbolKindNumber -> toJSON 16
      SymbolKindBoolean -> toJSON 17
      SymbolKindArray -> toJSON 18
      SymbolKindObject -> toJSON 19
      SymbolKindKey -> toJSON 20
      SymbolKindNull -> toJSON 21
      SymbolKindEnumMember -> toJSON 22
      SymbolKindStruct -> toJSON 23
      SymbolKindEvent -> toJSON 24
      SymbolKindOperator -> toJSON 25
      SymbolKindTypeParameter -> toJSON 26

data SymbolKind = SymbolKindFile
                | SymbolKindModule
                | SymbolKindNamespace
                | SymbolKindPackage
                | SymbolKindClass
                | SymbolKindMethod
                | SymbolKindProperty
                | SymbolKindField
                | SymbolKindConstructor
                | SymbolKindEnum
                | SymbolKindInterface
                | SymbolKindFunction
                | SymbolKindVariable
                | SymbolKindConstant
                | SymbolKindString
                | SymbolKindNumber
                | SymbolKindBoolean
                | SymbolKindArray
                | SymbolKindObject
                | SymbolKindKey
                | SymbolKindNull
                | SymbolKindEnumMember
                | SymbolKindStruct
                | SymbolKindEvent
                | SymbolKindOperator
                | SymbolKindTypeParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

