-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WindowClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ShowDocumentClientCapabilities
import LSP.Protocol.Types.ShowMessageRequestClientCapabilities
import LSP.Utils.JSON

instance FromJSON WindowClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedShowMessage <- lookupMaybeFromJSON "showMessage" vs
           parsedShowDocument <- lookupMaybeFromJSON "showDocument" vs
           return
            WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress = parsedWorkDoneProgress
                                     , windowClientCapabilitiesShowMessage = parsedShowMessage
                                     , windowClientCapabilitiesShowDocument = parsedShowDocument }
      _ -> Left ("Unrecognized WindowClientCapabilities value: " ++ ppJSON j)

data WindowClientCapabilities = WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress :: Maybe Bool
                                                         , windowClientCapabilitiesShowMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , windowClientCapabilitiesShowDocument :: Maybe ShowDocumentClientCapabilities }
 deriving (Show,Eq)

