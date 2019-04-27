-- NIM/Nama     : 16518360/Ilham Syahid S
-- Nama File    : KaliSemua.hs
-- Topik        : Rekursif dan List
-- Tanggal      : 20 Februari 2019
-- Deskripsi    : Menghitung perkalian semua bilangan pada list


module KaliSemua where
{-Buatlah definisi, spesifikasi, dan realisasi dari fungsi kaliSemua yang
menerima masukan sebuah list of integer (l) dan
mengembalikan hasil kali semua elemennya.

Contoh aplikasi fungsi dan hasilnya:

No	Aplikasi	Hasil	Keterangan
1.	kaliSemua [-9,-1,4]	36	-9 x -1 x 4 = 36
2.	kaliSemua [2,3,4,5]	120	2 x 3 x 4 x 5 = 120
3.	kaliSemua []	1	Tidak ada elemen list sehingga hasilnya 1

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

kaliSemua :: [Int] -> Int

kaliSemua x
 | isEmpty x = 1
 | otherwise = (head x) * kaliSemua (tail x)

-- kaliSemua x = product x
