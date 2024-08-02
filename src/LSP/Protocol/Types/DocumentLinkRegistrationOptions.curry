-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentLinkRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            DocumentLinkRegistrationOptions { documentLinkRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                            , documentLinkRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                            , documentLinkRegistrationOptionsResolveProvider = parsedResolveProvider }
      _ ->
        Left
         ("Unrecognized DocumentLinkRegistrationOptions value: " ++ ppJSON j)

instance ToJSON DocumentLinkRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentLinkRegistrationOptionsDocumentSelector x),  (.?=)
                                                              "workDoneProgress"
                                                              (documentLinkRegistrationOptionsWorkDoneProgress
                                                                x),  (.?=)
                                                                      "resolveProvider"
                                                                      (documentLinkRegistrationOptionsResolveProvider
                                                                        x)]

instance Default DocumentLinkRegistrationOptions where
  def =
    DocumentLinkRegistrationOptions { documentLinkRegistrationOptionsDocumentSelector = def
                                    , documentLinkRegistrationOptionsWorkDoneProgress = def
                                    , documentLinkRegistrationOptionsResolveProvider = def }

data DocumentLinkRegistrationOptions = DocumentLinkRegistrationOptions { documentLinkRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                       , documentLinkRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                       , documentLinkRegistrationOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

