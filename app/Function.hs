module Function where
{-
in haskell, there are three builtin properties of objects
1. value: value of value 1 is 1, value of add function is the add function, etc.
2. type: type of value 1 is Integer, type of add function is Integer -> Integer -> Integer
3. kind: kind of Integer is *, kind of Integer -> Integer -> Integer is *

value and function in haskell can be grouped into a class
-}


-- define a value
one :: Integer -- <name> :: <type> (optional)
one = 1 -- define value

-- define a function: (a -> b)
add1 :: Integer -> Integer
add1 x = x + 1 -- (prefix) or (+) x 1 (infix)

-- function application
two :: Integer
two = add1 one -- (unary function) (argument)

-- curry function: (a -> b -> c) can be considered as a -> (b -> c)
add :: Integer -> Integer -> Integer -- the same as Integer -> (Integer -> Integer)
add x y = x + y

add20 :: Integer -> Integer
add20 = add 20

add20to30 :: Integer
add20to30 = add20 30 -- the same as add 20 30 (function application is left precedence)

-- generics: a function can be defined for several types
takeFirst :: a -> a -> a -- a can be any type
takeFirst x y = x

-- generics with constraint
addNum :: Num a => a -> a -> a -- a must belong to type class Num
addNum x y = x + y