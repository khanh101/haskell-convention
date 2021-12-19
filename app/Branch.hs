module Branch where

data MyBox = EmptyBox | IntegerBox Integer

-- patern matching
-- haskell compile will match argument to each case
-- and use the corresponding function definition
getIntegerFromBox :: MyBox -> Integer
getIntegerFromBox EmptyBox = 0
getIntegerFromBox (IntegerBox x) = x

-- guard
-- intepret this expression
-- | x > 0 = 1 | x < 0 = -1 | otherwise = 0
-- if x > 0, replace the expression by 1
-- if x < 0, replace the expression by -1
-- otherwise, replace the expression by 0
sign :: Integer -> Integer
sign x | x > 0 = 1 | x < 0 = -1 | otherwise = 0

-- case of (similar to pattern matching)
-- intepret this expression
-- case box of EmptyBox -> 0 ; (IntegerBox x) -> x
-- if box matches EmptyBox, replace the expression by 0
-- if box matches IntegerBox x, replace the expression by x
getIntegerFromBoxWithCase :: MyBox -> Integer
getIntegerFromBoxWithCase box =
    case box of EmptyBox -> 0 ; (IntegerBox x) -> x -- ; can be replaced by \n





