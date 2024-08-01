-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticRelatedInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Location
import LSP.Utils.JSON

instance FromJSON DiagnosticRelatedInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLocation <- lookupFromJSON "location" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            DiagnosticRelatedInformation { diagnosticRelatedInformationLocation = parsedLocation
                                         , diagnosticRelatedInformationMessage = parsedMessage }
      _ ->
        Left ("Unrecognized DiagnosticRelatedInformation value: " ++ ppJSON j)

instance ToJSON DiagnosticRelatedInformation where
  toJSON x =
    object
     [(.=) "location" (diagnosticRelatedInformationLocation x),  (.=)
                                                                  "message"
                                                                  (diagnosticRelatedInformationMessage
                                                                    x)]

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { diagnosticRelatedInformationLocation :: Location
                                                                 , diagnosticRelatedInformationMessage :: String }
 deriving (Show,Eq)

