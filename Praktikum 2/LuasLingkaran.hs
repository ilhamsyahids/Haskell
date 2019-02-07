-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Luas Lingkaran

--LuasLingkaran - luasLingkaran(r)
module LuasLingkaran where

-- Deskripsi dan Spesifikasi
luasLingkaran :: Float -> Float
	-- luasLingkaran(r) menghitung luas lingkaran
	-- dengan jari-jari r
	-- bilangan real

-- Realisasi
luasLingkaran r =
	let p = 3.1415 -- phi
		in
			(p*r*r)  -- rumus luas lingkaran

-- Aplikasi
-- luasLingkaran 4
