-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LSPErrorCodes where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LSPErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         (-32803) -> Right LSPErrorCodesRequestFailed
         (-32802) -> Right LSPErrorCodesServerCancelled
         (-32801) -> Right LSPErrorCodesContentModified
         (-32800) -> Right LSPErrorCodesRequestCancelled
         _ -> Left ("Unrecognized LSPErrorCodes value: " ++ ppJSON j)

instance ToJSON LSPErrorCodes where
  toJSON x =
    case x of
      LSPErrorCodesRequestFailed -> toJSON (-32803)
      LSPErrorCodesServerCancelled -> toJSON (-32802)
      LSPErrorCodesContentModified -> toJSON (-32801)
      LSPErrorCodesRequestCancelled -> toJSON (-32800)

data LSPErrorCodes = LSPErrorCodesRequestFailed
                   | LSPErrorCodesServerCancelled
                   | LSPErrorCodesContentModified
                   | LSPErrorCodesRequestCancelled
 deriving (Show,Eq,Enum,Bounded,Ord)

