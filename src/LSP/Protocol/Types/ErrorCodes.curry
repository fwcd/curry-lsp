-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ErrorCodes where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         (-32700) -> Right ErrorCodesParseError
         (-32600) -> Right ErrorCodesInvalidRequest
         (-32601) -> Right ErrorCodesMethodNotFound
         (-32602) -> Right ErrorCodesInvalidParams
         (-32603) -> Right ErrorCodesInternalError
         (-32002) -> Right ErrorCodesServerNotInitialized
         (-32001) -> Right ErrorCodesUnknownErrorCode
         _ -> Left ("Unrecognized ErrorCodes value: " ++ ppJSON j)

instance ToJSON ErrorCodes where
  toJSON x =
    case x of
      ErrorCodesParseError -> toJSON (-32700)
      ErrorCodesInvalidRequest -> toJSON (-32600)
      ErrorCodesMethodNotFound -> toJSON (-32601)
      ErrorCodesInvalidParams -> toJSON (-32602)
      ErrorCodesInternalError -> toJSON (-32603)
      ErrorCodesServerNotInitialized -> toJSON (-32002)
      ErrorCodesUnknownErrorCode -> toJSON (-32001)

data ErrorCodes = ErrorCodesParseError
                | ErrorCodesInvalidRequest
                | ErrorCodesMethodNotFound
                | ErrorCodesInvalidParams
                | ErrorCodesInternalError
                | ErrorCodesServerNotInitialized
                | ErrorCodesUnknownErrorCode
 deriving (Show,Eq,Enum,Bounded,Ord)

