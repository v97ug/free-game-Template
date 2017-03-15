module Main where

import Lib
import FreeGame

update :: Game ()
update = do
  tick
  color blue $ line [V2 0 100, V2 100 100]
  color blue $ line [V2 100 0, V2 100 100]
  update

main :: IO (Maybe ())
main = runGame Windowed (Box (V2 0 0) (V2 800 800)) $ do
  clearColor white
  update
