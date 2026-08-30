def extra_end(str)
  last_two = str.slice(-2, 2)
  puts last_two * 3
end

# 呼び出し例
extra_end('Hello')  # => lololo
extra_end('ab')     # => ababab
extra_end('Hi')     # => HiHiHi

## 解説

## これは何をするコードか？
# 文字列の指定された文字を指定された回数繰り返して表示するプログラム。

## sliceメソッドとは
# 文字列の一部を取り出すためのメソッド。

## sliceメソッドの引数
# sliceメソッドの引数は、取り出す文字の開始位置と、取り出す文字数を指定する。
 
## sliceメソッドの引数の意味
# sliceメソッドの引数の意味は、slice(開始位置, 取り出す文字数)である。

## コードの意味
# 文字列の最後の2文字を取り出し、その文字列を3回繰り返して表示する。