module LSP.Utils.Default
  ( Default (..)
  ) where

import qualified Data.Map as M
import JSON.Data ( JValue (..) )

class Default a where
  -- | A default value.
  def :: a

instance Default Bool where
  def = False

instance Default Int where
  def = 0

instance Default Float where
  def = 0.0

instance Default Char where
  def = '\0'

instance Default () where
  def = ()

instance Default (Maybe a) where
  def = Nothing

instance Default [a] where
  def = []

instance Default (M.Map k v) where
  def = M.empty

instance (Default a, Default b) => Default (a, b) where
  def = (def, def)

instance (Default a, Default b, Default c) => Default (a, b, c) where
  def = (def, def, def)

instance (Default a, Default b, Default c, Default d) => Default (a, b, c, d) where
  def = (def, def, def, def)

-- LSP uses the convention that unions are often of the form Either a (), so the
-- default value is usually on the Right, hence this is what we do here too. In
-- the future we might want to look into adding more sophisticated generation
-- logic to the generator instead and use (Left def) given that default values
-- usually represent "empty" values while Right is most often used as the
-- "present" side in Haskell/Curry.

instance Default b => Default (Either a b) where
  def = Right def

instance Default JValue where
  def = JNull
