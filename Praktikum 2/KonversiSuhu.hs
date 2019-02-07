-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Konversi Suhu

-- Konversi Suhu -konversiSuhu(c,s)
module KonversiSuhu where

-- Deskripsi dan Spesifikasi
konversiSuhu :: Float -> Char -> Float
	-- konversiSuhu(c,s) mengkonversikan suhu dalam derajat Celcius
	-- menjadi suhu dalam derajat Fahrenheit, Reamur atau Kelvin.
	-- c bertipe integer, dan s bertipe character


konversiSuhu t s
	| (s == 'R') = (4/5 * c)			-- R = 4/5 * C
	| (s == 'F') = (9/5 * c) + 32	-- F = (9/5 * C) + 32
	| (s == 'K') = c + 273.15			-- K = C + 273.15
