# Tidal param generation with Template Haskell

Try it with:
```
ghci -XTemplateHaskell -ddump-splices
```

then
```
:l Main.hs
```

## Transform Haskell to Template Haskell
```
runQ [d|name = pF "name"|]
```