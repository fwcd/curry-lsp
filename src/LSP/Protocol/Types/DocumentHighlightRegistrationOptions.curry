-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentHighlightRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DocumentHighlightRegistrationOptions { documentHighlightRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                 , documentHighlightRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ ->
        Left
         ("Unrecognized DocumentHighlightRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DocumentHighlightRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentHighlightRegistrationOptionsDocumentSelector x),  (.?=)
                                                                   "workDoneProgress"
                                                                   (documentHighlightRegistrationOptionsWorkDoneProgress
                                                                     x)]

instance Default DocumentHighlightRegistrationOptions where
  def =
    DocumentHighlightRegistrationOptions { documentHighlightRegistrationOptionsDocumentSelector = def
                                         , documentHighlightRegistrationOptionsWorkDoneProgress = def }

data DocumentHighlightRegistrationOptions = DocumentHighlightRegistrationOptions { documentHighlightRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                 , documentHighlightRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

