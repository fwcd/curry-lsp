-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PartialResultParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON PartialResultParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           return
            PartialResultParams { partialResultParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized PartialResultParams value: " ++ ppJSON j)

data PartialResultParams = PartialResultParams { partialResultParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

