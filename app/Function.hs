module Function where
{-
in haskell, value and function is the first class object namely function

every function has a type (concrete type)
e.g
- Int
- Int -> Int
- Int -> Int -> Int
-}


-- define a value
one :: Int -- <name> :: <type> (optional)
one = 1 -- define value

-- define a function: (a -> b)
add1 :: Int -> Int
add1 x = x + 1 -- (prefix) or (+) x 1 (infix)

-- function application
two :: Int
two = add1 one -- (unary function) (argument)

-- curry function: (a -> b -> c) can be considered as a -> (b -> c)
add :: Int -> Int -> Int -- the same as Int -> (Int -> Int)
add x y = x + y

add20 :: Int -> Int
add20 = add 20

add20to30 :: Int
add20to30 = add20 30 -- the same as add 20 30 (function application is left precedence)

-- infix notation
add20to30Infix :: Int
add20to30Infix = 20 `add` 30

-- generics: a function can be defined for several types
takeFirst :: a -> a -> a -- a can be any type
takeFirst x y = x

-- generics with constraint
addNum :: Num a => a -> a -> a -- a must belong to type class Num
addNum x y = x + y

-- lambda
addLambda :: Int -> Int -> Int 
addLambda = \x y -> x + y
