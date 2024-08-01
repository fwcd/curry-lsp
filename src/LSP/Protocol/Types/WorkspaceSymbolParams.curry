-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedQuery <- lookupFromJSON "query" vs
           return
            WorkspaceSymbolParams { workspaceSymbolParamsQuery = parsedQuery }
      _ -> Left ("Unrecognized WorkspaceSymbolParams value: " ++ ppJSON j)

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsQuery :: String }
 deriving (Show,Eq)

