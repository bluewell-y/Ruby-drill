  def fizz_buzz
    num = 1
    while (num <= 100) do
      if (num % 3 == 0) && (num % 5 == 0)
        puts "FizzBuzz"
      elsif (num % 3) == 0
        puts "Fizz"
      elsif (num % 5) == 0
        puts "Buzz"
      else
        puts num
      end

      num = num + 1
    end
  end

  fizz_buzz


## 解説

## これは何をするコードか？
# 1から100までの数字を順番に表示するプログラム。
# ただし、3の倍数のときは数字の代わりに
# "Fizz"、5の倍数のときは"Buzz"、3と5の両方の倍数のときは"FizzBuzz"と表示する。

## コードの意味
# numという変数に1を代入する。
# while文でnumが100以下の間、繰り返し処理を行う。
# if文でnumが3の倍数かつ5の倍数のときは"FizzBuzz"を表示する。
# elsif文でnumが3の倍数のときは"Fizz"を表示する。
# elsif文でnumが5の倍数のときは"Buzz"を表示する。
# それ以外の場合はnumを表示する。
# 最後にnumに1を足して次の数字に進む。  