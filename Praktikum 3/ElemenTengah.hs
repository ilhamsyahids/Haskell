-- NIM/Nama     : 16518360/Ilham Syahid S
-- Nama File    : ElemenTengah.hs
-- Topik        : Rekursif dan List
-- Tanggal      : 20 Februari 2019
-- Deskripsi    : Menghasilkan elemen tengah dari list

module ElemenTengah where
{-
Buatlah definisi, spesifikasi, dan realisasi dari fungsi elemenTengah yang
menerima masukan sebuah list of integer (l) dan mengembalikan sebuah integer.
l adalah list yang berisi integer dan tidak kosong.

Jika banyaknya elemen pada list adalah bilangan genap,
ambil dua elemen yang ada di tengah dan kembalikan elemen keduanya.

elemenTengah :: [Int] -> Int
-- elemenTengah menerima masukan sebuah list of integer (l) dan mengembalikan
-- sebuah integer yang merupakan nilai elemen tengah dari l.
-- Jika banyaknya elemen pada list adalah genap, ambil dua elemen yang ada di tengah dan kembalikan elemen keduanya.
-- PREKONDISI: l tidak kosong.

Contoh aplikasi fungsi dan hasilnya:

No	Aplikasi	Hasil
1.	elemenTengah [1,3,5,7,9]	5
2.	elemenTengah [2,4,8,10]	8
3.	elemenTengah [7]	7

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


elemenTengah :: [Int] -> Int

elemenTengah x
 | isOneElmt x = head x
 | isEmpty (init(tail x)) = last x
 | otherwise = elemenTengah (init(tail x))
