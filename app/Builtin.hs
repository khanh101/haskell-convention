module Builtin where


data MyList a = MyListEmpty | MyListCons a (MyList a) deriving (Show)

-- construct a list
myListEmpty = MyListEmpty
myListWithOneItem = 1 `MyListCons` MyListEmpty
myListWithTwoItem = 1 `MyListCons` (2 `MyListCons` MyListEmpty)

-- construct a list (builtin)
myListEmptyBuiltin = []
myListWithOneItemBuiltin = 1:[] -- or [1]
myListWithTwoItemBuiltin = 1:2:[] -- or [1, 2]

-- head function
myHead :: MyList a -> a
myHead MyListEmpty = error "empty list"
myHead (x `MyListCons` xs) = x

-- head function (builtin)
builtinHead :: [a] -> a
builtinHead [] = error "empty list"
builtinHead (x:xs) = x