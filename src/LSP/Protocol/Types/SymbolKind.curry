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

