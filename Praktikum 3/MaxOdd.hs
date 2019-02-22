
module MaxOdd where

{-
Buatlah sebuah fungsi bernama maxOdd yang menerima input list of integer dan
menghasilkan sebuah tuple (pasangan nilai) dari bilangan ganjil yang
paling sering muncul dan frekuensi kemunculannya (bilangan, frekuensi).
Tampilkan bilangan pertama yang sering muncul apabila terdapat lebih dari 1 hasil.
List tidak mungkin kosong. Apabila tidak ada bilangan ganjil pada list
kembalikan nilai ('-1', 0)

Contoh aplikasi:

> maxOdd [1,2,3]
(1,1)
> maxOdd [8,8,9,10,11,9,11]
(9,2)
> maxOdd [2,6,4,8,10]
(-1,0)

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

maxOdd :: [Int] -> (Int,Int)

count :: [Int] -> Int -> Int

count x y
 | isEmpty x = 0
 | ((head x) == y) = 1 + count (tail x) y
 | otherwise = count (tail x) y

maxOdd l =
	if (isEmpty l) then (-1,0) --Basis
	else --Rekurens
	let (m,n) = maxOdd(tail l)
		in
			if
        (mod (head l) 2 == 1) &&
        (mod m 2 == 1) &&
        (n <= count l (head l))
        then
          (head l, count l (head l))
			else
        (m, count l m)
