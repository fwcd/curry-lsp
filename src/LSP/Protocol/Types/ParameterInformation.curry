-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ParameterInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupContent
import LSP.Utils.JSON

instance FromJSON ParameterInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           return
            ParameterInformation { parameterInformationLabel = parsedLabel
                                 , parameterInformationDocumentation = parsedDocumentation }
      _ -> Left ("Unrecognized ParameterInformation value: " ++ ppJSON j)

data ParameterInformation = ParameterInformation { parameterInformationLabel :: Either String (Int
                                                                                              ,Int)
                                                 , parameterInformationDocumentation :: Maybe (Either String MarkupContent) }
 deriving (Show,Eq)

