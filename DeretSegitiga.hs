

module DeretSegitiga where

-- Deskripsi dan Spesifikasi
ds :: Int -> Int
  -- ds(x) menghasilkan suku ke-x dari deret segitiga
  -- ex. 1,3,6,10,15,..
ds2 :: Int -> Int
  -- penulisan versi 2
ds3 :: Int -> Int
  -- penulisan versi 3

-- Realisasi
ds n =  if n==1 then 1 -- basis
        else n + ds(n-1) -- rekurens

ds2 n | n==1 = 1  -- versi 2 basis
      | otherwise = n + ds2(n-1) --rekurens

ds3 1 = 1 --versi 3 basis
ds3 n = n + ds3(n-1) --rekurens
