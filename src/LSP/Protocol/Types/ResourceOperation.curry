-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ResourceOperation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Utils.JSON

instance FromJSON ResourceOperation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           return
            ResourceOperation { resourceOperationKind = parsedKind
                              , resourceOperationAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized ResourceOperation value: " ++ ppJSON j)

instance ToJSON ResourceOperation where
  toJSON x =
    object
     [(.=) "kind" (resourceOperationKind x),  (.?=) "annotationId"
                                               (resourceOperationAnnotationId
                                                 x)]

data ResourceOperation = ResourceOperation { resourceOperationKind :: String
                                           , resourceOperationAnnotationId :: Maybe ChangeAnnotationIdentifier }
 deriving (Show,Eq)

