-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SnippetTextEdit where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.StringValue
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SnippetTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedSnippet <- lookupFromJSON "snippet" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           return
            SnippetTextEdit { snippetTextEditRange = parsedRange
                            , snippetTextEditSnippet = parsedSnippet
                            , snippetTextEditAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized SnippetTextEdit value: " ++ ppJSON j)

instance ToJSON SnippetTextEdit where
  toJSON x =
    object
     [(.=) "range" (snippetTextEditRange x),  (.=) "snippet"
                                               (snippetTextEditSnippet
                                                 x),  (.?=) "annotationId"
                                                       (snippetTextEditAnnotationId
                                                         x)]

instance Default SnippetTextEdit where
  def =
    SnippetTextEdit { snippetTextEditRange = def
                    , snippetTextEditSnippet = def
                    , snippetTextEditAnnotationId = def }

data SnippetTextEdit = SnippetTextEdit { snippetTextEditRange :: Range
                                       , snippetTextEditSnippet :: StringValue
                                       , snippetTextEditAnnotationId :: Maybe ChangeAnnotationIdentifier }
 deriving (Show,Eq)

