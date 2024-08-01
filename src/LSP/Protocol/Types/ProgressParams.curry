-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ProgressParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON ProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            ProgressParams { progressParamsToken = parsedToken
                           , progressParamsValue = parsedValue }
      _ -> Left ("Unrecognized ProgressParams value: " ++ ppJSON j)

instance ToJSON ProgressParams where
  toJSON x =
    object
     [(.=) "token" (progressParamsToken x),  (.=) "value"
                                              (progressParamsValue x)]

data ProgressParams = ProgressParams { progressParamsToken :: ProgressToken
                                     , progressParamsValue :: LSPAny }
 deriving (Show,Eq)

