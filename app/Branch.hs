module Branch where

data MyBox = EmptyBox | IntBox Int

-- patern matching
-- haskell compile will match argument to each case
-- and use the corresponding function definition
getIntFromBox :: MyBox -> Int
getIntFromBox EmptyBox = 0
getIntFromBox (IntBox x) = x

-- guard
-- intepret this expression
-- | x > 0 = 1 | x < 0 = -1 | otherwise = 0
-- as
-- if x > 0, replace the expression by 1
-- if x < 0, replace the expression by -1
-- otherwise, replace the expression by 0
sign :: Int -> Int
sign x | x > 0 = 1 | x < 0 = -1 | otherwise = 0

-- case of (similar to pattern matching)
-- intepret this expression
-- case box of EmptyBox -> 0 ; (IntBox x) -> x
-- as
-- if box matches EmptyBox, replace the expression by 0
-- if box matches IntBox x, replace the expression by x
getIntFromBoxWithCase :: MyBox -> Int
getIntFromBoxWithCase box =
    case box of EmptyBox -> 0 ; (IntBox x) -> x -- ; can be replaced by \n





