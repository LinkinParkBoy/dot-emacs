module SubPatternIn1 where

-- allow the user to select 'c' on the LHS of 
-- g. Should introduce 2 new equations for f:
-- g z (C1 x b c@[]) = x
-- g z (C1 x b c@(b_1 : b_2)) = x

data T = C1 [Int] Int [Float]| C2 Int

g :: Int -> T -> Int
g z (C1 x b c@[]) = b
g z (C1 x b c@(b_1 : b_2)) = b
g z (C1 x b c) = b
g z (C2 x) = x

f :: [Int] -> Int
f x@[] = hd x + hd (tl x)
f x@(y:ys) = hd x + hd (tl x)


hd x = head x

tl x = tail x
 