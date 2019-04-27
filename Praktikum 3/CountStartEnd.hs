-- NIM/Nama     : 16518360/Ilham Syahid S
-- Nama File    : CountStartEnd.hs
-- Topik        : Rekursif dan List
-- Tanggal      : 20 Februari 2019
-- Deskripsi    : Menghitung jumlah n elemen pertama dan terakhir pada list


module CountStartEnd where

{-Buatlah definisi, spesifikasi, dan realisasi dari fungsi countStartEnd yang
menerima sebuah list of integer (l) dan sebuah integer (n).
l adalah list dari semua bilangan bulat. n adalah semua bilangan bulat.
Fungsi ini akan mengembalikan hasil penjumlahan n elemen pertama dan terakhir dari l.

Prekondisi: n >= 0

countStartEnd :: [Int] -> Int -> Int
-- countStartEnd l n mengembalikan hasil penjumlahan n elemen pertama dan terakhir dari l
-- l adalah list integer yang akan dihitung elemennya.
-- n adalah berapa elemen dari awal dan akhir yang akan dihitung
-- prekondisi: n >= 0
Contoh aplikasi fungsi dan hasilnya:

No	Aplikasi	Hasil	Keterangan
1.	countStartEnd [] 1	0	Karena tidak ada elemen pada list, maka hasil penjumlahannya adalah 0
2.	countStartEnd [1,2,3,4,5] 2	12	Jumlah 2 elemen pertama [1,2] dan 2 elemen terakhir [4,5] adalah 1+2+4+5 = 12
3.	countStartEnd [1,2,3,4,5] 3	15	n lebih besar dari banyak elemen yang ada di l, sehingga semua elemen dihitung
4.	countStartEnd [1,2] 0	0	Tidak ada elemen yang dihitung, maka hasilnya adalah 0

-}

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int
   Rekurens:
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

countStartEnd :: [Int] -> Int -> Int

countStartEnd l n
 | (isEmpty l) = 0
 | n == 0 = 0
 | (isOneElmt l) = (head l)
 | otherwise = (head l) + (last l) + (countStartEnd (init(tail l)) (n-1))
