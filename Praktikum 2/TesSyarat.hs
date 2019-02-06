-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Menentukan Beasiswa


-- TesSyarat - tesSyarat(ip,pot)
module TesSyarat where

-- Deskripsi Dan Spesifikasi
tesSyarat :: Float -> Float -> Int
	-- menentukan jenis beasiswa dari beberapa spesifikasi

-- Realisasi
tesSyarat ip pot
	| (pot >= 1 && pot < 5) && (ip <3.5 && ip >= 2) = 3 -- 3.5 < IP >= 2 dan 5juta< pendapatan ortu >= 1juta
	| (pot >= 1 && pot < 5) && (ip <3.5 && ip < 2) = 2
	| (ip < 3.5) && (pot < 1) = 1
	| (ip >= 3.5) = 4
	| otherwise = 0
