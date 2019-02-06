-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Luas Lingkaran

module LuasLingkaran where

luasLingkaran :: Float -> Float
	-- luasLingkaran(r) menerima jari-jari
	-- lalu dihitung luasnya

luasLingkaran r =
	let p = 3.1415
	in
		(p*r*r)
