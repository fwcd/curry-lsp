-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ReferenceRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            ReferenceRegistrationOptions { referenceRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                         , referenceRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ ->
        Left ("Unrecognized ReferenceRegistrationOptions value: " ++ ppJSON j)

instance ToJSON ReferenceRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (referenceRegistrationOptionsDocumentSelector x),  (.?=)
                                                           "workDoneProgress"
                                                           (referenceRegistrationOptionsWorkDoneProgress
                                                             x)]

instance Default ReferenceRegistrationOptions where
  def =
    ReferenceRegistrationOptions { referenceRegistrationOptionsDocumentSelector = def
                                 , referenceRegistrationOptionsWorkDoneProgress = def }

data ReferenceRegistrationOptions = ReferenceRegistrationOptions { referenceRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                 , referenceRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

