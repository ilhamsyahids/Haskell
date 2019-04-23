
module KonversiSuhu where


-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> (Float -> Float) -> Float
{- KonversiSuhu(t,f) dengan T merepresentasikan suhu dalam  derajat tertentu dan fungsi f yang merupakan
fungsi konversi suhu, menghasilkan konversi t ke suhu pada derajat tertentu berdasarkan fungsi f. -}

konversiSuhu t f = f t
