-- where を使って変数に値を持ち関数内で使いまわしている
calcChange owed given = if change > 0
                        then change
                        else 0
  where
    change = given - owed

sumSquareOrSquareSum1 x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x + y)^2

-- 上の関数をラムダ関数で定義
sumSquareOrSquareSum2 x y = (\sumSquare squareSum ->
                              if sumSquare > squareSum
                              then sumSquare
                              else squareSum
                            )(x^2 + y^2)((x + y)^2)

-- where 式の代わりに let を使って変数を定義
sumSquareOrSquareSum3 x y = let sumSquare = x^2 + y^2
                                squareSum = (x + y)^2
                           in
                             if sumSquare > squareSum
                             then sumSquare
                             else squareSum

