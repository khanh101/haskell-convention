module FunctionDefinition where

data MyBox = EmptyBox | IntegerBox Integer

-- patern matching
-- haskell compile will match argument to each case
-- and use the corresponding function definition
getIntegerFromBox :: MyBox -> Integer
getIntegerFromBox EmptyBox = error "get integer from EmptyBox"
getIntegerFromBox IntegerBox x = x

-- guard
isGreaterThanZero :: Integer -> Bool
isGreaterThanZero x | x > 0 = True | otherwise = False


