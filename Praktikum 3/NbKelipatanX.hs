-- NIM/Nama     : 16518360/Ilham Syahid S
-- Nama File    : NbKelipatanX.hs
-- Topik        : Rekursif dan List
-- Tanggal      : 20 Februari 2019
-- Deskripsi    : Kelipatan X pada selang m dan n


module NbKelipatanX where

{- Nama File: NbKelipatanX.hs

Header: module NbKelipatanX where

Buatlah definisi, spesifikasi, dan realisasi fungsi nbKelipatanX yang menerima
masukan dua buah integer positif (integer > 0),
misalnya m dan n, serta sebuah integer positif lain, yaitu x,
dan menghasilkan banyaknya bilangan kelipatan x di antara m dan n (m dan n termasuk)
dengan menggunakan ekspresi rekursif.

Bilangan y disebut kelipatan bilangan x, jika y habis dibagi dengan x.

Prekondisi/syarat/asumsi yang berlaku adalah m <= n dan x <= n.
-}

nbKelipatanX :: Int -> Int -> Int -> Int

nbKelipatanX m n x
 | m>n = 0
 | (mod n x) == 0 = 1 + nbKelipatanX m (n-1) x
 | otherwise = nbKelipatanX m (n-1) x
