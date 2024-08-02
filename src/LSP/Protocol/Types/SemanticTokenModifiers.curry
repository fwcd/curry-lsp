-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokenModifiers where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokenModifiers where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "declaration" -> Right SemanticTokenModifiersDeclaration
         "definition" -> Right SemanticTokenModifiersDefinition
         "readonly" -> Right SemanticTokenModifiersReadonly
         "static" -> Right SemanticTokenModifiersStatic
         "deprecated" -> Right SemanticTokenModifiersDeprecated
         "abstract" -> Right SemanticTokenModifiersAbstract
         "async" -> Right SemanticTokenModifiersAsync
         "modification" -> Right SemanticTokenModifiersModification
         "documentation" -> Right SemanticTokenModifiersDocumentation
         "defaultLibrary" -> Right SemanticTokenModifiersDefaultLibrary
         _ -> Left ("Unrecognized SemanticTokenModifiers value: " ++ ppJSON j)

instance ToJSON SemanticTokenModifiers where
  toJSON x =
    case x of
      SemanticTokenModifiersDeclaration -> toJSON "declaration"
      SemanticTokenModifiersDefinition -> toJSON "definition"
      SemanticTokenModifiersReadonly -> toJSON "readonly"
      SemanticTokenModifiersStatic -> toJSON "static"
      SemanticTokenModifiersDeprecated -> toJSON "deprecated"
      SemanticTokenModifiersAbstract -> toJSON "abstract"
      SemanticTokenModifiersAsync -> toJSON "async"
      SemanticTokenModifiersModification -> toJSON "modification"
      SemanticTokenModifiersDocumentation -> toJSON "documentation"
      SemanticTokenModifiersDefaultLibrary -> toJSON "defaultLibrary"

instance Default SemanticTokenModifiers where
  def = SemanticTokenModifiersDeclaration

data SemanticTokenModifiers = SemanticTokenModifiersDeclaration
                            | SemanticTokenModifiersDefinition
                            | SemanticTokenModifiersReadonly
                            | SemanticTokenModifiersStatic
                            | SemanticTokenModifiersDeprecated
                            | SemanticTokenModifiersAbstract
                            | SemanticTokenModifiersAsync
                            | SemanticTokenModifiersModification
                            | SemanticTokenModifiersDocumentation
                            | SemanticTokenModifiersDefaultLibrary
 deriving (Show,Eq,Enum,Bounded,Ord)

