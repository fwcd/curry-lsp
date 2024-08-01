-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeLensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeLensOptions { codeLensOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized CodeLensOptions value: " ++ ppJSON j)

data CodeLensOptions = CodeLensOptions { codeLensOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

