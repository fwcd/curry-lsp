-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensWorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized SemanticTokensWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON SemanticTokensWorkspaceClientCapabilities where
  toJSON x =
    object
     [(.?=) "refreshSupport"
       (semanticTokensWorkspaceClientCapabilitiesRefreshSupport x)]

instance Default SemanticTokensWorkspaceClientCapabilities where
  def =
    SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport = def }

data SemanticTokensWorkspaceClientCapabilities = SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

