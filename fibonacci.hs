
module Fibo where

-- Fibonacci  --fb(x)

-- Definisi dan Spesifikasi
fb :: Int -> Int
  -- Definisi rekursif fungsi fibonacci:
  -- fb(x) = sesuai dengan definisi deret fibonacci:
  -- x = 0 : fb(0) = 0
  -- x = 1 : fb(1) = 1
  -- x > 1 : fb(x) = fb(x-1) + fb(x-2)


-- Realisasi (v.1)
{-

fb x =  if x==0 then 0
        else if x==1 then 1
        else fb(x-1) + fb(x-2)

-}

-- Realisasi (v.2)
{-

fb x
  | x==0 = 0
  | x==1 = 1
  | otherwise = fb(x-1) + fb(x-2)

-}


-- Aplikasi
-- fb 5
