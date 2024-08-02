-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlayHintRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            InlayHintRegistrationOptions { inlayHintRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                         , inlayHintRegistrationOptionsResolveProvider = parsedResolveProvider
                                         , inlayHintRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                         , inlayHintRegistrationOptionsId = parsedId }
      _ ->
        Left ("Unrecognized InlayHintRegistrationOptions value: " ++ ppJSON j)

instance ToJSON InlayHintRegistrationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (inlayHintRegistrationOptionsWorkDoneProgress x),  (.?=)
                                                           "resolveProvider"
                                                           (inlayHintRegistrationOptionsResolveProvider
                                                             x),  (.=)
                                                                   "documentSelector"
                                                                   (inlayHintRegistrationOptionsDocumentSelector
                                                                     x),  (.?=)
                                                                           "id"
                                                                           (inlayHintRegistrationOptionsId
                                                                             x)]

instance Default InlayHintRegistrationOptions where
  def =
    InlayHintRegistrationOptions { inlayHintRegistrationOptionsWorkDoneProgress = def
                                 , inlayHintRegistrationOptionsResolveProvider = def
                                 , inlayHintRegistrationOptionsDocumentSelector = def
                                 , inlayHintRegistrationOptionsId = def }

data InlayHintRegistrationOptions = InlayHintRegistrationOptions { inlayHintRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                 , inlayHintRegistrationOptionsResolveProvider :: Maybe Bool
                                                                 , inlayHintRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                 , inlayHintRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

