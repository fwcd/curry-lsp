-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlineValueRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            InlineValueRegistrationOptions { inlineValueRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                           , inlineValueRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                           , inlineValueRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized InlineValueRegistrationOptions value: " ++ ppJSON j)

instance ToJSON InlineValueRegistrationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (inlineValueRegistrationOptionsWorkDoneProgress x),  (.=)
                                                             "documentSelector"
                                                             (inlineValueRegistrationOptionsDocumentSelector
                                                               x),  (.?=) "id"
                                                                     (inlineValueRegistrationOptionsId
                                                                       x)]

instance Default InlineValueRegistrationOptions where
  def =
    InlineValueRegistrationOptions { inlineValueRegistrationOptionsWorkDoneProgress = def
                                   , inlineValueRegistrationOptionsDocumentSelector = def
                                   , inlineValueRegistrationOptionsId = def }

data InlineValueRegistrationOptions = InlineValueRegistrationOptions { inlineValueRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                     , inlineValueRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                     , inlineValueRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

