
module OffsetList where


konso x l = [x] ++ l
isEmpty l = null l
offsetList :: [Int] -> (Int->Int) -> [Int]

offsetList l f
 | isEmpty l = []
 | otherwise = konso (f (head l)) (offsetList (tail l) f)
