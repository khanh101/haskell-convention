{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
module BuiltinFunctor where

{-
functor behaves like functor in category theory
kind: (* -> *) -> Constraint
a constraint of (* -> *) which is an abstract type
myFmap transforms a function of type (a -> b) into a function of type (f a -> f b)
-}

class MyFunctor f where
    myFmap :: (a -> b) -> f a -> f b

data Box :: * -> * where
    BoxConstructor :: a -> Box a
    deriving (Show)


instance MyFunctor Box where
    myFmap map (BoxConstructor x) = BoxConstructor (map x)

-- built-in
instance Functor Box where
    fmap map = \(BoxConstructor x) -> BoxConstructor (map x)

toDouble :: Int -> Double
toDouble = fromIntegral

box1 :: Box Int
box1 = BoxConstructor 123

box2 :: Box Double
box2 = myFmap toDouble box1

-- built-in
box3 :: Box Double 
box3 = fmap toDouble box1
