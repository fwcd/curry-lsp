-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentLinkOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            DocumentLinkOptions { documentLinkOptionsWorkDoneProgress = parsedWorkDoneProgress
                                , documentLinkOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized DocumentLinkOptions value: " ++ ppJSON j)

instance ToJSON DocumentLinkOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (documentLinkOptionsWorkDoneProgress x),  (.?=)
                                                                          "resolveProvider"
                                                                          (documentLinkOptionsResolveProvider
                                                                            x)]

instance Default DocumentLinkOptions where
  def =
    DocumentLinkOptions { documentLinkOptionsWorkDoneProgress = def
                        , documentLinkOptionsResolveProvider = def }

data DocumentLinkOptions = DocumentLinkOptions { documentLinkOptionsWorkDoneProgress :: Maybe Bool
                                               , documentLinkOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

