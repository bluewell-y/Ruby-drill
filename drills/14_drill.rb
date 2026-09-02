def fizzbuzz(max_num)

  (1..max_num).each do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0
      puts "Fizz"
    else
      puts num
    end
  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)

## 解説

## これは何をするコードか？
# ユーザーが入力した数値までの数字を順番に表示するプログラム。

## コードの意味
# fizzbuzzというメソッドを定義する。引数としてmax_numを受け取る。
# (1..max_num)で1からmax_numまでの範囲を作り、eachメソッドでnumに順番に代入して繰り返し処理を行う。
# if文でnumが15の倍数のときは"FizzBuzz"を表示する。
# elsif文でnumが5の倍数のときは"Buzz"を表示する。
# elsif文でnumが3の倍数のときは"Fizz"を表示する。
# それ以外の場合はnumを表示する。
# 最後にユーザーに「いくつまで数えますか？」と尋ね、入力された数値をnumに代入し、fizzbuzzメソッドを呼び出す。 