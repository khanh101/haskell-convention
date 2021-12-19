module Description where

-- let keyword
-- intepret this expression
-- let x = 2; y = 3 in x + y
-- as
-- replace name expression by name in let statement
eight :: Integer
eight = (let x = 2 in x + 1) + (let x = 2; y = 3 in x + y)


-- where keyword
nine :: Integer
nine = x + y
    where x = 4 ; y = 5
