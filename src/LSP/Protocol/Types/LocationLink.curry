-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LocationLink where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON LocationLink where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOriginSelectionRange <- lookupMaybeFromJSON
                                          "originSelectionRange"
                                          vs
           parsedTargetUri <- lookupFromJSON "targetUri" vs
           parsedTargetRange <- lookupFromJSON "targetRange" vs
           parsedTargetSelectionRange <- lookupFromJSON "targetSelectionRange"
                                          vs
           return
            LocationLink { locationLinkOriginSelectionRange = parsedOriginSelectionRange
                         , locationLinkTargetUri = parsedTargetUri
                         , locationLinkTargetRange = parsedTargetRange
                         , locationLinkTargetSelectionRange = parsedTargetSelectionRange }
      _ -> Left ("Unrecognized LocationLink value: " ++ ppJSON j)

instance ToJSON LocationLink where
  toJSON x =
    object
     [(.?=) "originSelectionRange" (locationLinkOriginSelectionRange x),  (.=)
                                                                           "targetUri"
                                                                           (locationLinkTargetUri
                                                                             x),  (.=)
                                                                                   "targetRange"
                                                                                   (locationLinkTargetRange
                                                                                     x),  (.=)
                                                                                           "targetSelectionRange"
                                                                                           (locationLinkTargetSelectionRange
                                                                                             x)]

data LocationLink = LocationLink { locationLinkOriginSelectionRange :: Maybe Range
                                 , locationLinkTargetUri :: DocumentUri
                                 , locationLinkTargetRange :: Range
                                 , locationLinkTargetSelectionRange :: Range }
 deriving (Show,Eq)

