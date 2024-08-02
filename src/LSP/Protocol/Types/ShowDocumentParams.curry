-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowDocumentParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ShowDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedExternal <- lookupMaybeFromJSON "external" vs
           parsedTakeFocus <- lookupMaybeFromJSON "takeFocus" vs
           parsedSelection <- lookupMaybeFromJSON "selection" vs
           return
            ShowDocumentParams { showDocumentParamsUri = parsedUri
                               , showDocumentParamsExternal = parsedExternal
                               , showDocumentParamsTakeFocus = parsedTakeFocus
                               , showDocumentParamsSelection = parsedSelection }
      _ -> Left ("Unrecognized ShowDocumentParams value: " ++ ppJSON j)

instance ToJSON ShowDocumentParams where
  toJSON x =
    object
     [(.=) "uri" (showDocumentParamsUri x),  (.?=) "external"
                                              (showDocumentParamsExternal
                                                x),  (.?=) "takeFocus"
                                                      (showDocumentParamsTakeFocus
                                                        x),  (.?=) "selection"
                                                              (showDocumentParamsSelection
                                                                x)]

instance Default ShowDocumentParams where
  def =
    ShowDocumentParams { showDocumentParamsUri = def
                       , showDocumentParamsExternal = def
                       , showDocumentParamsTakeFocus = def
                       , showDocumentParamsSelection = def }

data ShowDocumentParams = ShowDocumentParams { showDocumentParamsUri :: Uri
                                             , showDocumentParamsExternal :: Maybe Bool
                                             , showDocumentParamsTakeFocus :: Maybe Bool
                                             , showDocumentParamsSelection :: Maybe Range }
 deriving (Show,Eq)

