-- NIM : 16518360
-- Nama : Ilham Syahid Syamsudin
-- Tanggal : Rabu, 6 Januari 2019
-- Topik : Fungsi
-- Deskripsi : Menentukan Baju

module UkuranBaju where

-- Deskripsi Dan Spesifikasi
ukuranBaju :: Int -> Int -> Int
-- ukuranBaju(t,b) untuk memilihkan baju dengan spesifikasi tertentu,
-- dengan t adalah tinggi
-- dan b adalah berat
-- Baju ukuran M untuk yang tingginya <= 150 cm (berapa pun berat badannya).
-- Baju ukuran XL untuk yang tingginya > 170 cm dan berat badannya > 60 kg tapi masih <= 80 kg.
-- Jika seseorang tingginya > 150 cm, tapi masih <= 170 cm dan berat badannya <= 80 kg, maka orang ini mendapatkan baju ukuran L. Kalau berat badannya > 80 kg, dia mendapatkan baju ukuran XL.
-- Orang yang tingginya > 170 cm dan berat badannya <= 60 kg, mendapat baju ukuran L.
-- Selainnya 4
--(1 adalah M, 2 adalah L, 3 adalah XL) atau kode 4 adalah untuk yang tidak mendapatkan kaos. -}

-- Realisasi
ukuranBaju t b
	| (t <= 150) = 1
	| (t > 170) && (b >60 && b<=80) = 3
	| (t > 150 && t <= 170) && (b > 80) = 3
	| (t > 170) && (b <= 60) = 2
	| (t > 150 && t <= 170) && (b <= 80) = 2
	| otherwise = 4

-- Aplikasi
-- ukuranBaju 160 45
