-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangeFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentRangeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedRangesSupport <- lookupMaybeFromJSON "rangesSupport" vs
           return
            DocumentRangeFormattingRegistrationOptions { documentRangeFormattingRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                       , documentRangeFormattingRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                                       , documentRangeFormattingRegistrationOptionsRangesSupport = parsedRangesSupport }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DocumentRangeFormattingRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentRangeFormattingRegistrationOptionsDocumentSelector x),  (.?=)
                                                                         "workDoneProgress"
                                                                         (documentRangeFormattingRegistrationOptionsWorkDoneProgress
                                                                           x),  (.?=)
                                                                                 "rangesSupport"
                                                                                 (documentRangeFormattingRegistrationOptionsRangesSupport
                                                                                   x)]

instance Default DocumentRangeFormattingRegistrationOptions where
  def =
    DocumentRangeFormattingRegistrationOptions { documentRangeFormattingRegistrationOptionsDocumentSelector = def
                                               , documentRangeFormattingRegistrationOptionsWorkDoneProgress = def
                                               , documentRangeFormattingRegistrationOptionsRangesSupport = def }

data DocumentRangeFormattingRegistrationOptions = DocumentRangeFormattingRegistrationOptions { documentRangeFormattingRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                             , documentRangeFormattingRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                                             , documentRangeFormattingRegistrationOptionsRangesSupport :: Maybe Bool }
 deriving (Show,Eq)

