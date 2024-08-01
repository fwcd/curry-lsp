-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.AnnotatedTextEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON AnnotatedTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedNewText <- lookupFromJSON "newText" vs
           parsedAnnotationId <- lookupFromJSON "annotationId" vs
           return
            AnnotatedTextEdit { annotatedTextEditRange = parsedRange
                              , annotatedTextEditNewText = parsedNewText
                              , annotatedTextEditAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized AnnotatedTextEdit value: " ++ ppJSON j)

data AnnotatedTextEdit = AnnotatedTextEdit { annotatedTextEditRange :: Range
                                           , annotatedTextEditNewText :: String
                                           , annotatedTextEditAnnotationId :: ChangeAnnotationIdentifier }
 deriving (Show,Eq)

