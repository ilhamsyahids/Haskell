-- NIM 				: 16518360
-- Nama 			: Ilham Syahid Syamsudin
-- Tanggal 		: Rabu, 6 Januari 2019
-- Topik 			: Fungsi
-- Deskripsi 	: Luas Traspesium

--LuasTrapesium - luasTrapesium(t,a,b)
module LuasTrapesium where

-- Deskripsi dan Spesifikasi
luasTrapesium :: Float -> Float -> Float -> Float
  -- luasLingkaran(t,a,b) menghitung luas trapesium
  -- dengan tinggi t, panjang sisi a dan b
  -- bilangan real

-- Realisasi
luasTrapesium t a b = 1/2 * t * (a+b) -- Rumus trapesium

-- Aplikasi
-- luasLingkaran 2 1 3
