-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueWorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineValueWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized InlineValueWorkspaceClientCapabilities value: "
           ++ ppJSON j)

data InlineValueWorkspaceClientCapabilities = InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

