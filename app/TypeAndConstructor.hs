module TypeAndConstructor where
{-
in haskell type is not value
type constructor is a value/function
-}

-- type alias
type MyInteger = Integer

-- define a type
-- a value of type MyBox can be either an EmptyBox, an IntegerBox, or a StringBox

-- MyBox is a type
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

-- MyBoxWithType is not a type
-- kind of MyBoxWithType:  * -> * -> * (receive 2 types to become a new type)
-- MyBoxWithType Integer Integer is a type
-- MyBoxWithType [Char] Integer is a type

-- EmptyBoxWithType and PairBoxWithType are type constructors (value/function)
-- type of EmptyBoxWithType: MyBoxWithType
-- type of PairBoxWithType: a -> b -> MyBoxWithType a b

data MyBoxWithType a b = EmptyBoxWithType | PairBoxWithType a b










