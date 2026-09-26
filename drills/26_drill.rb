def multiplication(num1, num2)
  puts "#{num1}と#{num2}をかけた答えは#{num1 * num2}です！"
end

puts "最初の数字を入力してください"
num1 = gets.to_i

puts "2番目の数字を入力してください"
num2 = gets.to_i

multiplication(num1, num2)

## 解説
## これは何をするコードか？
# ユーザーから2つの数字を入力してもらい、その2つの数字を掛け算して結果を表示するプログラム

## コードの意味
# multiplicationメソッドを定義する。
# 引数として渡された2つの数字を掛け算し、結果を表示する。
# ユーザーに最初の数字を入力してもらい、変数num1に代入する。
# ユーザーに2番目の数字を入力してもらい、変数num2に代入する。
# multiplicationメソッドを呼び出し、引数としてnum1とnum2を渡すことで、掛け算の結果を表示する。
