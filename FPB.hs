
--FPB --fpb(a,b)
module FPB where

-- Definisi dan Spesifikasi
fpb :: Int -> Int -> Int
  {- fpb(a,b) mencari bilangan integer terbesar
  yang dapat membagi kedua bilangan tersebut-}

-- Realisasi
fpb a b = if mod a b == 0 then b -- basis
          else fpb b (mod a b) -- rekurens
