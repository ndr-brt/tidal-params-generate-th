{-# LANGUAGE TemplateHaskell #-}

module Generate where

import Language.Haskell.TH
import Sound.Tidal.Params
import Sound.Tidal.Pattern
import Sound.Tidal.Context (ControlMap,ControlPattern,Enumerable,Time)

import GHC.Types (Double)

paramF :: [String] -> Q [Dec]
paramF names = do
  let srt' = map (\x -> (mkName x, x)) names
  let decs = map (uncurry dec) srt'
  return decs
  where 
    dec n s = ValD (VarP n) (NormalB (AppE (UnboundVarE 'Sound.Tidal.Params.pF) (LitE (StringL s)))) []

