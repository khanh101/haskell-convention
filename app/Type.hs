{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
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
type MyInt = Int

-- define a type
-- a value of type MyBox can be either an EmptyBox, an IntBox, or a StringBox

-- MyBox is a type (concrete type)
-- kind of MyBox: * (same as Int)

-- EmptyBox, IntBox, StringBox, PairBox are type constructors (value/function)
-- type of EmptyBox: MyBox
-- type of IntBox: Int -> MyBox
-- type of StringBox: [Char] -> MyBox
-- type of PairBox: Int -> Int -> MyBox

-- any value of type MyBox can only be defined by one of its constructors
-- that enable pattern matching in haskell (very convenient concept)
data MyBox :: * where
    EmptyBox :: MyBox
    IntBox :: Int -> MyBox
    StringBox :: [Char] -> MyBox
    PairBox :: Int -> Int -> MyBox

emptyBox :: MyBox
emptyBox = EmptyBox

box1 :: MyBox
box1 = IntBox 1

boxhello :: MyBox
boxhello = StringBox "hello"

pair12 :: MyBox
pair12 = PairBox 1 2

-- define a class of type (using param)

-- MyBoxWithType is a type (abstract type)
-- kind of MyBoxWithType:  * -> * -> * (receive 2 types to become a new type)
-- MyBoxWithType Int Int is a type (conrete type)
-- MyBoxWithType [Char] Int is a type (conrete type)

-- EmptyBoxWithType and PairBoxWithType are type constructors (value/function)
-- type of EmptyBoxWithType: MyBoxWithType a b
-- type of PairBoxWithType: a -> b -> MyBoxWithType a b

data MyBoxWithType :: * -> * -> * where
    EmptyBoxWithType :: MyBoxWithType a b
    PairBoxWithType :: a -> b -> MyBoxWithType a b

emptyBoxWithType :: MyBoxWithType a b
emptyBoxWithType = EmptyBoxWithType

pairBoxWithType :: MyBoxWithType Int [Char]
pairBoxWithType = PairBoxWithType 1 "1"











