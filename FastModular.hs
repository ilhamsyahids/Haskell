

-- mf :: Int -> Int -> Int

mf a b
  | a == 0 = 0
  | b == 0 = 1
  | (mod b 2)==0 = (mf a (div b 2))*(mf a (div b 2))
  | (mod b 2)==1 = a*(mf a (b-1))
