{-# LANGUAGE TemplateHaskell #-}

module Generate where

import Language.Haskell.TH
import Sound.Tidal.Params
import Sound.Tidal.Pattern
import Sound.Tidal.Context (ControlMap,ControlPattern,Enumerable,Time)

import GHC.Types (Double)

paramF :: String -> Q [Dec]
paramF name = [d| pippo = pF name |]
  -- where name' = mkName name
