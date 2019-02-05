--Faktorial fac(x)

-- Definisi dan Spesifikasi
-- fac :: Int -> Int
  {- fac(n) = n! sesuai dengan definisi rekursif faktorial dengan basis 1 -}

-- Realisasi
fac n =
  if (n==1) then 1
  else (n * fac (n-1))

-- Aplikasi
-- fac 5
