-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            LinkedEditingRangeRegistrationOptions { linkedEditingRangeRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                  , linkedEditingRangeRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                                  , linkedEditingRangeRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized LinkedEditingRangeRegistrationOptions value: "
           ++ ppJSON j)

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions { linkedEditingRangeRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                   , linkedEditingRangeRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                                   , linkedEditingRangeRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

