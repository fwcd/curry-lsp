-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowDocumentClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ShowDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSupport <- lookupFromJSON "support" vs
           return
            ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport = parsedSupport }
      _ ->
        Left
         ("Unrecognized ShowDocumentClientCapabilities value: " ++ ppJSON j)

instance ToJSON ShowDocumentClientCapabilities where
  toJSON x = object [(.=) "support" (showDocumentClientCapabilitiesSupport x)]

instance Default ShowDocumentClientCapabilities where
  def =
    ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport = def }

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport :: Bool }
 deriving (Show,Eq)

