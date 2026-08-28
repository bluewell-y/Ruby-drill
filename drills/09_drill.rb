def addition(a, b)
  a + b
end

def multiplication(a, b)
  a * b
end

def slice_num(num)
  juu_no_kurai = num / 10   # 十の位の計算
  ichi_no_kurai = num % 10  # 一の位の計算
  return juu_no_kurai, ichi_no_kurai
end

puts "二桁の整数を入力してください"
input = gets.to_i
x, y = slice_num(input)

add_result = addition(x, y)
multiple_result = multiplication(x, y)

puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"

## 解説

# これは何をするコードか？
# 2桁の整数を入力すると、十の位と一の位を使って足し算と掛け算をして、
# その2つの答えを合計して表示するプログラム

## slice_numメソッドとは
# 2桁の整数を「十の位」と「一の位」の2つの数字に分解するためのメソッド

## additionメソッドとは
# 2つの数字を足し算するためのメソッド
# 
## コードの意味
# ユーザーに2桁の数字を入力してもらい、その数字を十の位と一の位に分解する。
# 分解した2つの数字を足し算した答えと、掛け算した答えをそれぞれ求め、
# 最後にその2つの答えを合計して画面に表示する。