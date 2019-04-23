
module DeleteList where

deleteIf :: [Int] -> (Int->Bool) -> [Int]

deleteIf l f
 | null l = []
 | (f (head l)) = deleteIf (tail l) f
 | otherwise = [head l] ++ deleteIf (tail l) f
