module Class where
{-
class is like an interface in other programming language
kind of class: * -> Constraint
-}

-- define class Add1
-- implement Add1 into type Int
class Add1 a where
    add1method :: a -> a

instance Add1 Int where
    add1method x = x + 1 

one :: Int 
one = 1

two :: Int 
two = add1method one