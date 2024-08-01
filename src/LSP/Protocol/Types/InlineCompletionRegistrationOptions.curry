-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON InlineCompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            InlineCompletionRegistrationOptions { inlineCompletionRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                                , inlineCompletionRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                , inlineCompletionRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized InlineCompletionRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON InlineCompletionRegistrationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (inlineCompletionRegistrationOptionsWorkDoneProgress x),  (.=)
                                                                  "documentSelector"
                                                                  (inlineCompletionRegistrationOptionsDocumentSelector
                                                                    x),  (.?=)
                                                                          "id"
                                                                          (inlineCompletionRegistrationOptionsId
                                                                            x)]

data InlineCompletionRegistrationOptions = InlineCompletionRegistrationOptions { inlineCompletionRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                               , inlineCompletionRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                               , inlineCompletionRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

