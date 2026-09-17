def near_ten(num)
  remainder = num % 10
  if remainder <= 2 || remainder >= 8
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
near_ten(12)  # => True
near_ten(17)  # => False
near_ten(19)  # => True

## 解説
## これは何をするコードか？
# 引数として渡された整数が10の倍数に近いかどうかを判定するメソッドnear_tenを定義し、
# 10の倍数に近い場合はTrue、そうでない場合はFalseを表示するプログラム

## コードの意味
# near_tenメソッドを定義する。
# 引数として渡された整数の10で割った余りを計算し、
# 余りが2以下または8以上の場合は10の倍数に近いと判断し、Trueを表示する。
# それ以外の場合は10の倍数に近くないと判断し、Falseを表示する。
# 呼び出し例として、near_tenメソッドを呼び出し、
# 引数として渡された整数が10の倍数に近いかどうかを判定し、結果を表示する。