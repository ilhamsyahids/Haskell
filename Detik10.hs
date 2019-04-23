
ubah :: Int -> Int -> Int

ubah s r = mod (s+r) 360


aa :: Int -> Int

aa a = if (mod a 10 == a) then a
        else aa (div a 10) + mod a 10

detik10(j,m,d) =
  if d < 50 then (j,m,d+10)
  else if m < 59 then (j,m+1,d-50)
  else if j < 23 then (j+1,0,d-50)
  else (0,0,d-50)

hitungKabisat :: Int -> Int -> Int

hitungKabisat a b =
    if a>b then
      0
    else if isKabisat a then
      1 + (hitungKabisat (a+1) b)
    else
      (hitungKabisat (a+1) b)

isKabisat x | (((mod x 4) == 0 && (mod x 100) /= 0) ||
              ((mod x 400) == 0)) = True
            | otherwise = False

dpm a  --{ analisa kasus terhadap B } depend on B
    | a == 1 = 1
    | a == 2 = 32
    | a == 3 = 60
    | a == 4 = 91
    | a == 5 = 121
    | a == 6 = 152
    | a == 7 = 182
    | a == 8 = 213
    | a == 9 = 244
    | a == 10 = 274
    | a == 11 = 305
    | a == 12 = 335
hitungDari2000 :: Int -> Int -> Int -> Int
hitungDari2000 d m y
  | (isKabisat y) && ((m==2 && d==29) || m>=3)
    = dpm m + d + hitungKabisat 2000 (y-1) + (y-2000)*365
  | otherwise = dpm m + d + hitungKabisat 2000 (y-1) + (y-2000)*365 - 1
