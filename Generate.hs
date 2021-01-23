{-# LANGUAGE TemplateHaskell #-}

module Generate where

import Language.Haskell.TH
import Sound.Tidal.Params
import Sound.Tidal.Pattern
import GHC.Types

paramF :: String -> Q [Dec]
paramF name = return [ValD (VarP name') (NormalB (AppE (AppE (VarE Sound.Tidal.Params.pF) (LitE (StringL name))) (SigE (UnboundVarE pat) (AppT (ConT Sound.Tidal.Pattern.Pattern) (ConT GHC.Types.Double))))) []]
  where name' = mkName name
