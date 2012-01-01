import Prelude              (IO)
import Yesod.Default.Config (fromArgsExtra)
import Yesod.Default.Main   (defaultMain)
import Settings             (parseExtra)
import Application          (withYesodWeb)

main :: IO ()
main = defaultMain (fromArgsExtra parseExtra) withYesodWeb