def register_data(people)
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.to_i
  puts "身長（m）を入力してください"
  height = gets.to_f
  puts "体重を入力してください"
  weight = gets.to_f

  people << { name: name, age: age, height: height, weight: weight }
end

def show_data(people)
  puts "見たい人の番号を選択してください"
  people.each.with_index(1) do |person, i|
    puts "#{i}:#{person[:name]}"
  end

  person = people[gets.to_i - 1]
  puts "名前:#{person[:name]}"
  puts "年齢:#{person[:age]}"
  puts "身長:#{person[:height]}"
  puts "体重:#{person[:weight]}"
end

people = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(people)
  elsif input == 1
    show_data(people)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end

## 解説
## 何をするコードですか？
# データを登録するか、データを確認するか、終了するかを選択するコードです。
# 登録されたデータは、名前、年齢、身長、体重の情報を持つハッシュとして配列に保存されます。

## コードの意味
# def register_data(people)は、register_dataという名前のメソッドを作るという意味で、peopleという引数を受け取ります。
# puts "名前を入力してください"は、名前を入力してくださいという文字列を表示するという意味。
# name = gets.chompは、ユーザーの入力を受け取り、それを文字列としてnameという変数に代入するという意味。
# puts "年齢を入力してください"は、年齢を入力してくださいという文字列を表示するという意味。
# age = gets.to_iは、ユーザーの入力を受け取り、それを整数に変換してageという変数に代入するという意味。
# puts "身長（m）を入力してください"は、身長（m）を入力してくださいという文字列を表示するという意味。
# height = gets.to_fは、ユーザーの入力を受け取り、それを浮動小数点数に変換してheightという変数に代入するという意味。
# puts "体重を入力してください"は、体重を入力してくださいという文字列を表示するという意味。
# weight = gets.to_fは、ユーザーの入力を受け取り、それを浮動小数点数に変換してweightという変数に代入するという意味。
# people << { name: name, age: age, height: height, weight: weight }は、people配列に新しいハッシュ（名前、年齢、身長、体重の情報）を追加するという意味。

# def show_data(people)は、show_dataという名前のメソッドを作るという意味で、peopleという引数を受け取ります。
# puts "見たい人の番号を選択してください"は、見たい人の番号を選択してくださいという文字列を表示するという意味。
# people.each.with_index(1) do |person, i|は、people配列の各要素（person）とそのインデックス（i）を1から始めて繰り返すループです。
# puts "#{i}:#{person[:name]}"は、インデックスと名前を表示するという意味。
# person = people[gets.to_i - 1]は、ユーザーが選択した番号に対応するpersonハッシュを取得するという意味。
# puts "名前:#{person[:name]}"は、選択された人の名前を表示するという意味。
# puts "年齢:#{person[:age]}"は、選択された人の年齢を表示するという意味。
# puts "身長:#{person[:height]}"は、選択された人の身長を表示するという意味。
# puts "体重:#{person[:weight]}"は、選択された人の体重を表示するという意味。
# people = []は、peopleという空の配列を作成するという意味。
# while trueは、無限ループを作るという意味。
# puts "選択してください"は、選択してくださいという文字列を表示するという意味。
# puts "[0]登録する"は、[0]登録するという文字列を表示するという意味。
# puts "[1]データを確認する"は、[1]データを確認するという文字列を表示するという意味。
# puts "[2]終了する"は、[2]終了するという文字列を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、それを整数に変換してinputという変数に代入するという意味。
# if input == 0は、inputが0かどうかを判定する条件式。
# register_data(people)は、inputが0の場合に実行される処理で、register_dataメソッドを呼び出し、people配列を渡すという意味。
# elsif input == 1は、inputが1かどうかを判定する条件式。
# show_data(people)は、inputが1の場合に実行される処理で、show_dataメソッドを呼び出し、people配列を渡すという意味。
# elsif input == 2は、inputが2かどうかを判定する条件式。
# exitは、inputが2の場合に実行される処理で、プログラムを終了するという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "無効な値です"は、無効な値ですという文字列を表示するという意味。