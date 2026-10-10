def register_data
  puts "データの登録"
end

def show_data
  puts "データの閲覧"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
    show_data
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end

## 解説
## 何をするコードですか？
# データを登録するか、データを確認するか、終了するかを選択するコードです。

## コードの意味
# def register_dataは、register_dataという名前のメソッドを作るという意味。
# puts "データの登録"は、データの登録という文字列を表示するという意味。
# def show_dataは、show_dataという名前のメソッドを作るという意味。
# puts "データの閲覧"は、データの閲覧という文字列を表示するという意味。
# while trueは、無限ループを作るという意味。
# puts "選択してください"は、選択してくださいという文字列を表示するという意味。
# puts "[0]登録する"は、[0]登録するという文字列を表示するという意味。
# puts "[1]データを確認する"は、[1]データを確認するという文字列を表示するという意味。
# puts "[2]終了する"は、[2]終了するという文字列を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、それを整数に変換してinputという変数に代入するという意味。
# if input == 0は、inputが0かどうかを判定する条件式。
# register_dataは、inputが0の場合に実行される処理で、register_dataメソッドを呼び出すという意味。
# elsif input == 1は、inputが1かどうかを判定する条件式。
# show_dataは、inputが1の場合に実行される処理で、show_dataメソッドを呼び出すという意味。
# elsif input == 2は、inputが2かどうかを判定する条件式。
# exitは、inputが2の場合に実行される処理で、プログラムを終了するという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "無効な値です"は、無効な値ですという文字列を表示するという意味。
