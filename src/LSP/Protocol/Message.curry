module LSP.Protocol.Message
  ( Message (..)
  ) where

import JSON.Data ( JValue (..) )
import JSON.Pretty ( ppJSON )
import LSP.Utils.JSON ( FromJSON (..), ToJSON (..), lookupFromJSON, lookupStringFromJSON )

-- | A JSON-RPC message.
data Message a = Message
  { msgJsonrpc :: String
  , msgMethod :: String
  , msgParams :: a
  , msgId :: JValue
  }

-- TODO: Add support for (representing and en-/decoding) errors.

-- | A JSON-RPC response.
data Response a = Response
  { rspJsonrpc :: String
  , rspResult :: a
  , rspId :: JValue
  }

instance FromJSON a => FromJSON (Message a) where
  fromJSON j = case j of
    JObject vs -> do
      jrpc   <- lookupStringFromJSON "jsonrpc" vs
      method <- lookupStringFromJSON "method" vs
      params <- lookupFromJSON "params" vs
      id     <- lookupFromJSON "id" vs
      return $ Message
        { msgJsonrpc = jrpc
        , msgMethod = method
        , msgParams = params
        , msgId = id
        }
    _ -> Left $ "Unrecognized message value: " ++ ppJSON j

instance ToJSON a => ToJSON (Response a) where
  toJSON rsp = JObject
    [ ("jsonrpc", JString (rspJsonrpc rsp))
    , ("result", toJSON (rspResult rsp))
    -- TODO: Curry's JSON package only supports floating-point representations
    --       could this be an issue if the client relies on integers?
    , ("id", rspId rsp)
    ]
