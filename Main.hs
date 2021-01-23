{-# LANGUAGE TemplateHaskell #-}

import Generate
import Control.Monad

$(paramF "funziono")
{- 
main = do 
  liftIO $ name' 3
  return ()
 -}