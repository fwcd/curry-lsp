-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ParameterInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupContent
import LSP.Utils.Default
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

instance ToJSON ParameterInformation where
  toJSON x =
    object
     [(.=) "label" (parameterInformationLabel x),  (.?=) "documentation"
                                                    (parameterInformationDocumentation
                                                      x)]

instance Default ParameterInformation where
  def =
    ParameterInformation { parameterInformationLabel = def
                         , parameterInformationDocumentation = def }

data ParameterInformation = ParameterInformation { parameterInformationLabel :: Either String (Int
                                                                                              ,Int)
                                                 , parameterInformationDocumentation :: Maybe (Either String MarkupContent) }
 deriving (Show,Eq)

