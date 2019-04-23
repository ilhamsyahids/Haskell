
module FilterList where 
konso x l = [x] ++ l
isEmpty l = null l

filterList :: [Int] -> (Int->Bool) -> [Int]

filterList l f
 | isEmpty l = []
 | not (f (head l)) = filterList (tail l) f
 | otherwise = konso (head l) (filterList (tail l) f)
