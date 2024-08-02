-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PublishDiagnosticsParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Diagnostic
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON PublishDiagnosticsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           parsedDiagnostics <- lookupFromJSON "diagnostics" vs
           return
            PublishDiagnosticsParams { publishDiagnosticsParamsUri = parsedUri
                                     , publishDiagnosticsParamsVersion = parsedVersion
                                     , publishDiagnosticsParamsDiagnostics = parsedDiagnostics }
      _ -> Left ("Unrecognized PublishDiagnosticsParams value: " ++ ppJSON j)

instance ToJSON PublishDiagnosticsParams where
  toJSON x =
    object
     [(.=) "uri" (publishDiagnosticsParamsUri x),  (.?=) "version"
                                                    (publishDiagnosticsParamsVersion
                                                      x),  (.=) "diagnostics"
                                                            (publishDiagnosticsParamsDiagnostics
                                                              x)]

instance Default PublishDiagnosticsParams where
  def =
    PublishDiagnosticsParams { publishDiagnosticsParamsUri = def
                             , publishDiagnosticsParamsVersion = def
                             , publishDiagnosticsParamsDiagnostics = def }

data PublishDiagnosticsParams = PublishDiagnosticsParams { publishDiagnosticsParamsUri :: DocumentUri
                                                         , publishDiagnosticsParamsVersion :: Maybe Int
                                                         , publishDiagnosticsParamsDiagnostics :: [Diagnostic] }
 deriving (Show,Eq)

