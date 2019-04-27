{- 
Tuliskan definisi, spesifikasi, dan realisasi dari fungsi countIf yang menerima masukan:
sebuah list of integer, misalnya l
sebuah fungsi yang menerima masukan sebuah integer dan menghasilkan nilai boolean, misalnya f
Fungsi countIf menghasilkan banyaknya elemen l yang memenuhi persyaratan bernilai true jika diperiksa dengan menggunakan fungsi boolean

isLebih5 :: Int -> Bool

-- isLebih5(x) true jika x > 5

isBetween :: Int -> Bool

-- isBetween(x) true jika 0 <= x <= 100

isEqual10 :: Int -> Bool

-- isEqual10(x) true jika x = 10
-}


module CountIf where

countIf :: [Int] -> (Int->Bool) -> Int

countIf l f
 | null l = 0
 | not (f (head l)) = countIf (tail l) f
 | otherwise = 1 + countIf (tail l) f
