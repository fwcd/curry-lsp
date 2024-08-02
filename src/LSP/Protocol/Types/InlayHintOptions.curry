-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlayHintOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            InlayHintOptions { inlayHintOptionsWorkDoneProgress = parsedWorkDoneProgress
                             , inlayHintOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized InlayHintOptions value: " ++ ppJSON j)

instance ToJSON InlayHintOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (inlayHintOptionsWorkDoneProgress x),  (.?=)
                                                                       "resolveProvider"
                                                                       (inlayHintOptionsResolveProvider
                                                                         x)]

instance Default InlayHintOptions where
  def =
    InlayHintOptions { inlayHintOptionsWorkDoneProgress = def
                     , inlayHintOptionsResolveProvider = def }

data InlayHintOptions = InlayHintOptions { inlayHintOptionsWorkDoneProgress :: Maybe Bool
                                         , inlayHintOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

