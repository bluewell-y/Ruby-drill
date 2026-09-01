def calculate_points(amount, is_birthday)
  if amount <= 999
    points = amount * 0.03
  else
    points = amount * 0.05
  end

  if is_birthday
    points = points * 5
  end

  puts "ポイントは#{points.floor}点です"
end

# 呼び出し例
calculate_points(500, false)   # => ポイントは15点です
calculate_points(2000, false)  # => ポイントは100点です
calculate_points(3000, true)   # => ポイントは750点です

## 解説

# これは何をするコードか？
# 購入金額に応じてポイントを計算し、誕生日の場合はその5倍のポイントを付与するプログラム。
# 
