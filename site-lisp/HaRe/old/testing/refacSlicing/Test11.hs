module Test11 where

f = \x y -> x + y + (\x -> x + y)
