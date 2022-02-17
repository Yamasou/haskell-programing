-- これをどうのこうのします
inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEven myFunction x = if even x
                      then myFunction x
                      else x

genIfEven f = (\x -> ifEven f x)

-- これが
-- ifEvenInc num = ifEven inc num
-- ifEvenDouble num = ifEven double num
-- ifEvenSquare num = ifEven square num

-- こうなる
ifEvenInc = genIfEven inc
ifEvenDouble = genIfEven double
ifEvenSquare = genIfEven square
