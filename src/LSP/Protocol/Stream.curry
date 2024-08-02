module LSP.Protocol.Stream
  ( readMessage
  , writeMessage
  ) where

import Control.Monad ( unless )
import Data.Char ( toLower )
import System.IO ( Handle, hGetChar, hPutStrLn, hPutStr, stderr )
import LSP.Utils.General ( fromJust', fromRight' )
import LSP.Utils.JSON ( FromJSON (..), ToJSON (..) )

-- | Reads a single message with Content-Length header from the stream.
readMessage :: FromJSON a => Handle -> IO a
readMessage h = fromRight' . fromJSONString <$> readRawMessage h

-- | Writes a single message with Content-Length header to the stream.
writeMessage :: ToJSON a => a -> Handle -> IO ()
writeMessage = writeRawMessage . toJSONString

-- | Reads a single raw message with Content-Length header from the stream.
readRawMessage :: Handle -> IO String
readRawMessage h = do
  headers <- readHeaders h
  let headers' = (\(k, v) -> (toLower <$> k, v)) <$> headers
      rawLen = fromJust' ("Missing Content-Length header (got: " ++ show headers ++ ")") $ lookup "content-length" headers'
      len = (read rawLen) :: Int
  -- FIXME: Remove this debug message
  hPutStrLn stderr $ "Reading " ++ show len ++ " bytes..."
  readString len h

-- | Writes a single raw message with Content-Length header to the stream.
writeRawMessage :: String -> Handle -> IO ()
writeRawMessage = writeString . formatRawMessage

-- | Formats a single raw message with Content-Length header.
formatRawMessage :: String -> String
formatRawMessage raw = formatHeaders [("Content-Length", show (length raw))] ++ raw

-- | Reads all headers. After calling this method, the handle points to the content.
readHeaders :: Handle -> IO [(String, String)]
readHeaders h = do
  (k, v) <- readHeader h
  c <- hGetChar h
  if c == '\r' then do skipString "\n" h
                       return [(k, v)]
               else ((k, v):) <$> readHeaders h

-- | Writes the given headers.
writeHeaders :: [(String, String)] -> Handle -> IO ()
writeHeaders = writeString . formatHeaders

-- | Formats the given headers.
formatHeaders :: [(String, String)] -> String
formatHeaders hs = concat (formatHeader <$> hs) ++ "\r\n"
  where formatHeader (k, v) = k ++ ": " ++ v ++ "\r\n"

-- | Reads a single header. After calling this method, the handle points to the next
-- header (or '\r\n...' if there are no more headers).
readHeader :: Handle -> IO (String, String)
readHeader h = do
  key <- readWhile (/= ':') h
  skipString " " h
  value <- readWhile (/= '\r') h
  skipString "\n" h
  return (key, value)

-- | Reads until the given predicate matches.
-- NOTE that this consumes/discards the last character (i.e. the one matching the predicate).
readWhile :: (Char -> Bool) -> Handle -> IO String
readWhile p h = do
  c <- hGetChar h
  if p c then (c:) <$> readWhile p h
         else return ""

-- | Reads the given number of bytes as string.
readString :: Int -> Handle -> IO String
readString n h | n <= 0    = return ""
               | otherwise = do
  c <- hGetChar h
  (c:) <$> readString (n - 1) h

-- | Writes the given string.
writeString :: String -> Handle -> IO ()
writeString = flip hPutStr

-- | Skips over an expected string, erroring if some character doesn't match.
skipString :: String -> Handle -> IO ()
skipString [] _ = return ()
skipString (c:cs) h = do
  c' <- hGetChar h
  unless (toLower c == toLower c') $
    error $ "Expected '" ++ (c:cs) ++ "', but got '" ++ [c'] ++ "'"
