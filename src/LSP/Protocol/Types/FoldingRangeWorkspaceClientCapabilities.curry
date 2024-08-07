-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeWorkspaceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FoldingRangeWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            FoldingRangeWorkspaceClientCapabilities { foldingRangeWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized FoldingRangeWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON FoldingRangeWorkspaceClientCapabilities where
  toJSON x =
    object
     [(.?=) "refreshSupport"
       (foldingRangeWorkspaceClientCapabilitiesRefreshSupport x)]

instance Default FoldingRangeWorkspaceClientCapabilities where
  def =
    FoldingRangeWorkspaceClientCapabilities { foldingRangeWorkspaceClientCapabilitiesRefreshSupport = def }

data FoldingRangeWorkspaceClientCapabilities = FoldingRangeWorkspaceClientCapabilities { foldingRangeWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

