def close_far(a, b, c)
  x = (a - b).abs
  y = (a - c).abs
  z = (b - c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10)  # => True
close_far(1, 2, 3)   # => False
close_far(4, 1, 3)   # => True

## 解説
## これは何をするコードか？
# 引数として渡された3つの整数a, b, cのうち、
# 1つの整数が他の2つの整数と1だけ離れているかつ、残りの2つの整数が2以上離れている場合にTrueを
# 返すメソッドclose_farを定義するプログラム

## コードの意味
# close_farメソッドを定義する。
# まず、aとbの差の絶対値をx、aとcの差の絶対値をy、bとcの差の絶対値をzとして計算する。
# 次に、xが1かつzが2以上の場合、
# またはyが1かつzが2以上の場合にTrueを表示する。
# それ以外の場合はFalseを表示する。
# 呼び出し例として、close_farメソッドを呼び出し、
# 引数として渡された3つの整数a, b, cのうち、
# 1つの整数が他の2つの整数と1だけ離れているかつ、残りの2つの整数が2以上離れている場合にTrueを
# 返すかどうかを判定し、結果を表示する。