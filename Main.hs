{-#LANGUAGE TemplateHaskell#-}
import Generate

$(paramF "ciccia")

main = print haskell
