-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.StaleRequestSupportOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON StaleRequestSupportOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCancel <- lookupFromJSON "cancel" vs
           parsedRetryOnContentModified <- lookupFromJSON
                                            "retryOnContentModified"
                                            vs
           return
            StaleRequestSupportOptions { staleRequestSupportOptionsCancel = parsedCancel
                                       , staleRequestSupportOptionsRetryOnContentModified = parsedRetryOnContentModified }
      _ ->
        Left ("Unrecognized StaleRequestSupportOptions value: " ++ ppJSON j)

instance ToJSON StaleRequestSupportOptions where
  toJSON x =
    object
     [(.=) "cancel" (staleRequestSupportOptionsCancel x),  (.=)
                                                            "retryOnContentModified"
                                                            (staleRequestSupportOptionsRetryOnContentModified
                                                              x)]

instance Default StaleRequestSupportOptions where
  def =
    StaleRequestSupportOptions { staleRequestSupportOptionsCancel = def
                               , staleRequestSupportOptionsRetryOnContentModified = def }

data StaleRequestSupportOptions = StaleRequestSupportOptions { staleRequestSupportOptionsCancel :: Bool
                                                             , staleRequestSupportOptionsRetryOnContentModified :: [String] }
 deriving (Show,Eq)

