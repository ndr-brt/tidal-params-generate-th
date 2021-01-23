{-# LANGUAGE TemplateHaskell #-}

import Generate
$(paramF ["first", "second", "third"])