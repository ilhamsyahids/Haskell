{- mo a b c d =
  let maxab = (a+b + abs(a-b))/2
      maxcd = (c+d + abs(c-d))/2
      minab = (a+b - abs(a-b))/2
      mincd = (c+d - abs(c-d))/2
  in
    let maks = (maxab+maxcd + abs(maxab-maxcd))/2
        min = (minab+mincd - abs(minab-mincd))/2
    in
        (a+b+c+d-maks-min)/2
-}
max2 x y = (x+y + abs(x-y))/2
min2 x y = (x+y - abs(x-y))/2
mo a b c d =  (a+b+c+d - (max2 (max2 a b) (max2 c d)) - (min2 (min2 a b) (min2 c d)))/2
