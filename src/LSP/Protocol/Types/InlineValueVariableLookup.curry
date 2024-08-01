-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueVariableLookup where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON InlineValueVariableLookup where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedVariableName <- lookupMaybeFromJSON "variableName" vs
           parsedCaseSensitiveLookup <- lookupFromJSON "caseSensitiveLookup"
                                         vs
           return
            InlineValueVariableLookup { inlineValueVariableLookupRange = parsedRange
                                      , inlineValueVariableLookupVariableName = parsedVariableName
                                      , inlineValueVariableLookupCaseSensitiveLookup = parsedCaseSensitiveLookup }
      _ -> Left ("Unrecognized InlineValueVariableLookup value: " ++ ppJSON j)

data InlineValueVariableLookup = InlineValueVariableLookup { inlineValueVariableLookupRange :: Range
                                                           , inlineValueVariableLookupVariableName :: Maybe String
                                                           , inlineValueVariableLookupCaseSensitiveLookup :: Bool }
 deriving (Show,Eq)

