module Settings.StaticFiles where

import Prelude (IO, otherwise)
import Yesod.Static
import qualified Yesod.Static as Static
import Settings (staticDir, development)

-- | use this to create your static file serving site
staticSite :: IO Static.Static
staticSite
    | development = Static.staticDevel staticDir
    | otherwise   = Static.static staticDir

-- | This generates easy references to files in the static directory at compile time,
--   giving you compile-time verification that referenced files exist.
--   Warning: any files added to your static directory during run-time can't be
--   accessed this way. You'll have to use their FilePath or URL to access them.
$(staticFiles Settings.staticDir)
