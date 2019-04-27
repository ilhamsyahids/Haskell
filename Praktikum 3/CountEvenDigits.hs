-- NIM/Nama		: 16518360/Ilham Syahid S
-- Nama File	: CountEvenDigits.hs
-- Topik		: Rekursif dan List
-- Tanggal		: 20 Februari 2019
-- Deskripsi	: Menghitung jumlah genap pada digit

{-
Buatlah definisi, spesifikasi, dan realisasi fungsi countEvenDigits yang
menerima masukan 1 nilai integer positif. Realisasi fungsi countEvenDigits
menghasilkan banyaknya digit bilangan tersebut yang genap (0, 2, 4, 6, atau 8)

Catatan :
- 0 dianggap genap
- Leading zero (angka yang dimulai dari digit "0") tidak perlu ditangani.
	Bilangan seperti 043, 000013, 00197, 000, dst tidak perlu ditangani.

countEvenDigits :: Int -> Int
-- countEvenDigits n menghasilkan banyaknya digit n yang merupakan bilangan genap
-- catatan: 0 dianggap genap
-}
module CountEvenDigits where

countEvenDigits :: Int -> Int

countEvenDigits n
			| (n<10) && (mod n 2==0) = 1
			| (n<10) = 0
			| (mod n 2==0) || (n==0) = countEvenDigits (div n 10) + 1
			| otherwise = countEvenDigits (div n 10)
