-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.AnnotatedTextEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Utils.JSON

instance FromJSON AnnotatedTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAnnotationId <- lookupFromJSON "annotationId" vs
           return
            AnnotatedTextEdit { annotatedTextEditAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized AnnotatedTextEdit value: " ++ ppJSON j)

data AnnotatedTextEdit = AnnotatedTextEdit { annotatedTextEditAnnotationId :: ChangeAnnotationIdentifier }
 deriving (Show,Eq)

