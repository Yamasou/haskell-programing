-- 再帰関数
-- なんとなく嫌いな感じあるけどルールにしたがえば大丈夫らしい
-- 最大公約数を求めるアルゴリズムの場合
myGCD a b = if remainder == 0
             then b
             else myGCD b remainder
  where remainder = a `mod` b

-- パターンマッチング
sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "a bounch"

-- length 関数を再帰とパターンマッチングを使って実装してみる
myLength [] = 0
myLength xs = 1 + myLength (tail xs)

-- アッカーマン関数 `A(m, n)` で再帰処理
-- 要件
-- - m == 0 のときは `n + 1` を返す
-- - n == 0 のときは `A(m - 1, n)` を返す
-- - m != 0 かつ n != 0 のときは `A(m - 1, A(m, n - 1))` を返す
ackerman 0 n = n + 1
ackerman m 0 = ackerman (m - 1) 1
ackerman m n = ackerman (m - 1) (ackerman m (n - 1))
