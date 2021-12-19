module Class where
{-
class is like an interface in other programming language
kind of class: * -> Constraint
-}

-- define a type class Add1
-- implement Add1 into type Integer
class Add1 a where
    add1method :: a -> a

instance Add1 Integer where
    add1method x = x + 1 