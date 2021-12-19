module Builtin where


data MyList a = MyListEmpty | MyListCons a (MyList a)

-- show
toString :: MyList a -> String
toString MyListEmpty = "" -- empty list
toString (x `MyListCons` MyListEmpty) = show x -- single item list
toString (x `MyListCons` y `MyListCons` lst) = (show x) ++ toString (y `MyListCons` lst) -- at least two items list

instance Show (MyList a) where
    show :: MyList a -> String
    show l = "[" ++ toString l ++ "]"

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