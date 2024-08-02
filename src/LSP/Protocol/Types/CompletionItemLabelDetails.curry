-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemLabelDetails where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionItemLabelDetails where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedDescription <- lookupMaybeFromJSON "description" vs
           return
            CompletionItemLabelDetails { completionItemLabelDetailsDetail = parsedDetail
                                       , completionItemLabelDetailsDescription = parsedDescription }
      _ ->
        Left ("Unrecognized CompletionItemLabelDetails value: " ++ ppJSON j)

instance ToJSON CompletionItemLabelDetails where
  toJSON x =
    object
     [(.?=) "detail" (completionItemLabelDetailsDetail x),  (.?=)
                                                             "description"
                                                             (completionItemLabelDetailsDescription
                                                               x)]

instance Default CompletionItemLabelDetails where
  def =
    CompletionItemLabelDetails { completionItemLabelDetailsDetail = def
                               , completionItemLabelDetailsDescription = def }

data CompletionItemLabelDetails = CompletionItemLabelDetails { completionItemLabelDetailsDetail :: Maybe String
                                                             , completionItemLabelDetailsDescription :: Maybe String }
 deriving (Show,Eq)

