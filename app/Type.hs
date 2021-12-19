module Type where
{-
in haskell, 

every type has a kind
e.g
- *
- * -> *
- * -> * -> *

type with kind * is called concrete type
any other type is called abstract type
-}


-- type alias
type MyInteger = Integer

-- define a type
-- a value of type MyBox can be either an EmptyBox, an IntegerBox, or a StringBox

-- MyBox is a type (concrete type)
-- kind of MyBox: * (same as Integer)

-- EmptyBox, IntegerBox, StringBox, PairBox are type constructors (value/function)
-- type of EmptyBox: MyBox
-- type of IntegerBox: Integer -> MyBox
-- type of StringBox: [Char] -> MyBox
-- type of PairBox: Integer -> Integer -> MyBox

-- any value of type MyBox can only be defined by one of its constructors
-- that enable pattern matching in haskell (very convenient concept)
data MyBox = EmptyBox | IntegerBox Integer | StringBox [Char] | PairBox Integer Integer

-- define a class of type (using param)

-- MyBoxWithType is a type (abstract type)
-- kind of MyBoxWithType:  * -> * -> * (receive 2 types to become a new type)
-- MyBoxWithType Integer Integer is a type (conrete type)
-- MyBoxWithType [Char] Integer is a type (conrete type)

-- EmptyBoxWithType and PairBoxWithType are type constructors (value/function)
-- type of EmptyBoxWithType: MyBoxWithType
-- type of PairBoxWithType: a -> b -> MyBoxWithType a b

data MyBoxWithType a b = EmptyBoxWithType | PairBoxWithType a b










