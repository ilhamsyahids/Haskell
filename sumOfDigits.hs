module SumDigits where

-- Deskripsi dan Spesifikasi
sd1 :: Int -> Int
  -- sd1(x) menghitung seluruh digit integer pada x
  -- menghasilkan integer
sd2 :: Int -> Int
  -- penulisan versi 2 pada sb1

-- Realisasi
sd1 x =   if (div x 10)== 0 then x -- versi 1 penulisan -- basis
          else (mod x 10) + sd1(div (x - mod x 10) 10) -- rekurens

sd2 x | div x 10 == 0 = x   --versi 2 penulisan --basis
      | otherwise = sd2 (div (x - mod x 10) 10) + mod x 10 -- rekurens

-- Aplikasi
-- sd1 56 = 11
-- sd2 11 = 2
