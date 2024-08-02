-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FormattingOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTabSize <- lookupFromJSON "tabSize" vs
           parsedInsertSpaces <- lookupFromJSON "insertSpaces" vs
           parsedTrimTrailingWhitespace <- lookupMaybeFromJSON
                                            "trimTrailingWhitespace"
                                            vs
           parsedInsertFinalNewline <- lookupMaybeFromJSON
                                        "insertFinalNewline"
                                        vs
           parsedTrimFinalNewlines <- lookupMaybeFromJSON "trimFinalNewlines"
                                       vs
           return
            FormattingOptions { formattingOptionsTabSize = parsedTabSize
                              , formattingOptionsInsertSpaces = parsedInsertSpaces
                              , formattingOptionsTrimTrailingWhitespace = parsedTrimTrailingWhitespace
                              , formattingOptionsInsertFinalNewline = parsedInsertFinalNewline
                              , formattingOptionsTrimFinalNewlines = parsedTrimFinalNewlines }
      _ -> Left ("Unrecognized FormattingOptions value: " ++ ppJSON j)

instance ToJSON FormattingOptions where
  toJSON x =
    object
     [(.=) "tabSize" (formattingOptionsTabSize x),  (.=) "insertSpaces"
                                                     (formattingOptionsInsertSpaces
                                                       x),  (.?=)
                                                             "trimTrailingWhitespace"
                                                             (formattingOptionsTrimTrailingWhitespace
                                                               x),  (.?=)
                                                                     "insertFinalNewline"
                                                                     (formattingOptionsInsertFinalNewline
                                                                       x),  (.?=)
                                                                             "trimFinalNewlines"
                                                                             (formattingOptionsTrimFinalNewlines
                                                                               x)]

instance Default FormattingOptions where
  def =
    FormattingOptions { formattingOptionsTabSize = def
                      , formattingOptionsInsertSpaces = def
                      , formattingOptionsTrimTrailingWhitespace = def
                      , formattingOptionsInsertFinalNewline = def
                      , formattingOptionsTrimFinalNewlines = def }

data FormattingOptions = FormattingOptions { formattingOptionsTabSize :: Int
                                           , formattingOptionsInsertSpaces :: Bool
                                           , formattingOptionsTrimTrailingWhitespace :: Maybe Bool
                                           , formattingOptionsInsertFinalNewline :: Maybe Bool
                                           , formattingOptionsTrimFinalNewlines :: Maybe Bool }
 deriving (Show,Eq)

