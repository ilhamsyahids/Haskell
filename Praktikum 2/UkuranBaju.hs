-- NIM 			: 16518360
-- Nama 		: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 		: Fungsi
-- Deskripsi	: Menentukan Baju

--UkuranBaju - ukuranBaju(t,b)
module UkuranBaju where

-- Deskripsi Dan Spesifikasi
ukuranBaju :: Int -> Int -> Int
	-- ukuranBaju(t,b) menentukan baju dari tinggi(t) dan berat(b),
	-- dengan t,b adalah integer

-- Realisasi
ukuranBaju t b
	| (t <= 150) = 1							-- M, tinggi <= 150 cm (berapa pun berat badannya).
	| (t > 170) && (b >60 && b<=80) = 3			-- XL, tinggi > 170 cm, 80 kg >= berat badan > 60 kg.
	| (t > 150 && t <= 170) && (b > 80) = 3 	-- XL, 170 cm >= tinggi > 150 cm, berat badan > 80 kg.
	| (t > 170) && (b <= 60) = 2				-- L, 170 cm >= tinggi > 150 cm, berat badan <= 80 kg.
	| (t > 150 && t <= 170) && (b <= 80) = 2	-- L, tinggi > 170 cm, berat badan <= 60 kg.
	| otherwise = 4								-- Selainnya, tidak dapat kaos

-- Aplikasi
-- ukuranBaju 160 45
