# haskell-convention

haskell convention - done right

# latest haskell documentation

https://downloads.haskell.org/ghc/latest/docs/html/

# run code

```bash
cabal run
```

# table of contents

## first-class

- entities: value, function

- examples
  
  - value: `1`, `2`
  
  - function: `\x -> x+1`

- type of

  - value: `Int`

  - function: `Int -> Int`

## second-class

- entities: concrete type, abstract type

- examples
  
  - concrete type: `Int`, `Int -> Int`

- kind of

  - concrete type: `*`
  
  - abstract type: `* -> *`
  
## third-class

- entities: kind

- examples

  - kind: `*`, `* -> *`



