-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON HoverRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            HoverRegistrationOptions { hoverRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                     , hoverRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized HoverRegistrationOptions value: " ++ ppJSON j)

instance ToJSON HoverRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (hoverRegistrationOptionsDocumentSelector x),  (.?=) "workDoneProgress"
                                                       (hoverRegistrationOptionsWorkDoneProgress
                                                         x)]

data HoverRegistrationOptions = HoverRegistrationOptions { hoverRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                         , hoverRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

