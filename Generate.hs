{-# LANGUAGE TemplateHaskell #-}

module Generate where

import Language.Haskell.TH
import Sound.Tidal.Params
import Sound.Tidal.Pattern
import Sound.Tidal.Context (ControlMap,ControlPattern,Enumerable,Time)

import GHC.Types (Double)

paramF :: String -> Q [Dec]
paramF name = return [ValD (VarP name') (NormalB (AppE (UnboundVarE 'Sound.Tidal.Params.pF) (LitE (StringL name)))) []]
  where name' = mkName name
