module LSP.Generation.Main
  ( main
  ) where

import LSP.Generation.Model ( MetaModel (..) )
import LSP.Utils.General ( fromRight' )
import LSP.Utils.JSON ( FromJSON (..) )

main :: IO ()
main = do
  rawMetaModel <- readFile "resources/metaModel.json"
  let metaModel = (fromRight' $ fromJSONString rawMetaModel) :: MetaModel

  -- TODO: Generate Curry structures etc. from meta model
  putStrLn $ show metaModel
