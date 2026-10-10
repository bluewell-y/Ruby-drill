while true do
  puts "[0]:カロリーを表示する、[1]:終了する"
  input = gets.to_i

  if input == 0
    puts "500kcal"
  elsif input == 1
    exit
  end
end

## 解説
## 何をするコードですか？
# カロリーを表示するか、終了するかを選択するコードです。

## コードの意味
# while true doは、無限ループを作るという意味。
# puts "[0]:カロリーを表示する、[1]:終了する"は、選択肢を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、それを整数に変換してinputという変数に代入するという意味。
# if input == 0は、inputが0かどうかを判定する条件式。
# puts "500kcal"は、inputが0の場合に実行される処理で、カロリーを表示するという意味。
# elsif input == 1は、inputが1かどうかを判定する条件式。
# exitは、inputが1の場合に実行される処理で、プログラムを終了するという意味。
