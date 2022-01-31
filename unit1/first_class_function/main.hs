import Data.List

-- 適当な処理の数の引数に関数を渡す例
inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEven myFunction x = if even x
                      then myFunction x
                      else x

ifEvenInc num = ifEven inc num
ifEvenDouble num = ifEven double num
ifEvenSquare num = ifEven square num

-- sort を使った関数の引数に関数を渡す例
names = [("Lan", "Curtis"), ("Peter", "Hook"), ("Bsrnard", "Sumner")]
sortedNames = sort names

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                 then LT
                                 else EQ
  where lastName1 = snd name1
        lastName2 = snd name2

sortedNamesByLastName = sortBy compareLastNames names

-- 手紙の宛先を作成する処理を想定した、関数が関数を返すパターンの例
-- サンフランシスコでは、ラストネームがアルファベットのL以降の文字で始まるメンバーに対して新しい住所「POBox1010,SanFrancisco,CA,94109」が追加されている
sfOffice name = if lastName < "L"
                then nameText ++ "- PF Box 1234 - San Francisco, CA, 94111"
                else nameText ++ "- PF Box 1234 - San Francisco, CA, 94109"
  where lastName = snd name
        nameText = fst name ++ " " ++ lastName

-- ニューヨークからは、名前の後をハイフンではなくコロンにしてほしいという要望がきている。理由は教えてくれない
nyOffice name = nameText ++ ":PO Box 789 - New York, NY, 10013"
  where nameText = fst name ++ " " ++ snd name

-- レノからは、個人情報を保護するためにラストネームだけを使用してほしいという要望が来ている
renoOffice name = nameText ++ "- PO Box 456 - Reno, NV 89523"
 where nameText = snd name

getLocationFunction location = case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> fst name ++ " " ++ snd name)

addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location
