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
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeLensOptions { codeLensOptionsWorkDoneProgress = parsedWorkDoneProgress
                            , codeLensOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized CodeLensOptions value: " ++ ppJSON j)

data CodeLensOptions = CodeLensOptions { codeLensOptionsWorkDoneProgress :: Maybe Bool
                                       , codeLensOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

