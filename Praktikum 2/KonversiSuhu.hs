-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Konversi Suhu

-- Konversi Suhu -konversiSuhu(a,b)
module KonversiSuhu where

-- Deskripsi dan Spesifikasi
konversiSuhu :: Float -> Char -> Float
	-- konversiSuhu(a,b) menerima input derajat celsius
	-- dan bentuk konversinya


konversiSuhu a b
	| (b == 'R') = (4/5 * a)			-- R = 4/5 * C
	| (b == 'F') = (9/5 * a) + 32	-- F = (9/5 * C) + 32
	| (b == 'K') = a + 273.15			-- K = C + 273.15
