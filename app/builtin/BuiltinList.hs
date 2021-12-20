{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
module BuiltinList where

-- list
data MyList :: * -> * where
    MyListEmpty :: MyList a
    MyListCons :: a -> MyList a -> MyList a
    deriving (Show)



-- construct a list
myListEmpty :: MyList a
myListEmpty = MyListEmpty
myListWithOneItem :: MyList Int
myListWithOneItem = 1 `MyListCons` MyListEmpty
myListWithTwoItem :: MyList Int
myListWithTwoItem = 1 `MyListCons` (2 `MyListCons` MyListEmpty)

-- construct a list (builtin)
myListEmptyBuiltin :: [a]
myListEmptyBuiltin = []
myListWithOneItemBuiltin :: [Int]
myListWithOneItemBuiltin = 1:[] -- or [1]
myListWithTwoItemBuiltin :: [Int]
myListWithTwoItemBuiltin = 1:2:[] -- or [1, 2]

-- head function
myHead :: MyList a -> a
myHead MyListEmpty = error "empty list"
myHead (x `MyListCons` xs) = x

-- head function (builtin)
builtinHead :: [a] -> a
builtinHead [] = error "empty list"
builtinHead (x:xs) = x