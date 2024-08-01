-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PreviousResultId where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON PreviousResultId where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            PreviousResultId { previousResultIdUri = parsedUri
                             , previousResultIdValue = parsedValue }
      _ -> Left ("Unrecognized PreviousResultId value: " ++ ppJSON j)

data PreviousResultId = PreviousResultId { previousResultIdUri :: DocumentUri
                                         , previousResultIdValue :: String }
 deriving (Show,Eq)

