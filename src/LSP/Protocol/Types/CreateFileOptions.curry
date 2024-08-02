-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CreateFileOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CreateFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            CreateFileOptions { createFileOptionsOverwrite = parsedOverwrite
                              , createFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left ("Unrecognized CreateFileOptions value: " ++ ppJSON j)

instance ToJSON CreateFileOptions where
  toJSON x =
    object
     [(.?=) "overwrite" (createFileOptionsOverwrite x),  (.?=)
                                                          "ignoreIfExists"
                                                          (createFileOptionsIgnoreIfExists
                                                            x)]

instance Default CreateFileOptions where
  def =
    CreateFileOptions { createFileOptionsOverwrite = def
                      , createFileOptionsIgnoreIfExists = def }

data CreateFileOptions = CreateFileOptions { createFileOptionsOverwrite :: Maybe Bool
                                           , createFileOptionsIgnoreIfExists :: Maybe Bool }
 deriving (Show,Eq)

