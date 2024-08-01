-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensWorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeLensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized CodeLensWorkspaceClientCapabilities value: "
           ++ ppJSON j)

data CodeLensWorkspaceClientCapabilities = CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

