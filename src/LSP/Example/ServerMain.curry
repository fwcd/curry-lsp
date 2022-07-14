module LSP.Example.ServerMain
  ( main
  ) where

import LSP.Runner.Server ( runServerLoop )
import System.IO ( stdin, stdout )

main :: IO ()
main = runServerLoop stdin stdout
