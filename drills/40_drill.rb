def register_data(data)
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.chomp
  puts "身長を入力してください（m単位）"
  tall = gets.to_f
  puts "体重を入力してください"
  weight = gets.to_f
  person = { name: name, age: age, tall: tall, weight: weight, bmi: calculate_bmi(tall, weight)}
  data << person
end

def calculate_bmi(tall, weight)
  bmi = weight / tall / tall
end

def show_data_list(data)
  puts "見たい人の番号を選択してください"
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  show_data(data[input])
end

def show_data(data)
  puts "名前:#{data[:name]}"
  puts "年齢:#{data[:age]}"
  puts "身長:#{data[:tall]}"
  puts "体重:#{data[:weight]}"
  puts "BMI:#{data[:bmi]}"
end

data = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end

## 解説
## 何をするコードですか？
# データを登録するか、データを確認するか、終了するかを選択するコードです。
# 登録されたデータは、名前、年齢、身長、体重、BMIの情報を持つハッシュとして配列に保存されます

## コードの意味
# def register_data(data)は、register_dataという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts "名前を入力してください"は、名前を入力してくださいという文字列を表示するという意味。
# name = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてnameという変数に代入するという意味。
# puts "年齢を入力してください"は、年齢を入力してくださいという文字列を表示するという意味。
# age = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてageという変数に代入するという意味。
# puts "身長を入力してください（m単位）"は、
# 身長を入力してください（m単位）という文字列を表示するという意味。
# tall = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してtallという変数に代入するという意味。
# puts "体重を入力してください"は、
# 体重を入力してくださいという文字列を表示するという意味。
# weight = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してweightという変数に代入するという意味。
# person = { name: name, age: age, tall: tall, weight: weight, bmi: calculate_bmi(tall, weight)}は、
# personというハッシュに名前、年齢、身長、体重、BMIの情報を格納するという意味。
# data << personは、data配列にpersonハッシュを追加するという意味。
# def calculate_bmi(tall, weight)は、
# calculate_bmiという名前のメソッドを作るという意味で、tallとweightという引数を受け取ります。
# bmi = weight / tall / tallは、BMIを計算するという意味。
# def show_data_list(data)は、
# show_data_listという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts "見たい人の番号を選択してください"は、
# 見たい人の番号を選択してくださいという文字列を表示するという意味。
# data.each_with_index do |person, index|は、
# data配列の各要素に対して処理を行うという意味。
# puts "#{index + 1}: #{person[:name]}"は、
# 各人の名前と番号を表示するという意味。
# input = gets.to_i - 1は、ユーザーの入力を受け取り、
# それを整数に変換してinputという変数に代入するという意味。
# show_data(data[input])は、show_dataメソッドを呼び出し、
# 選択された人のデータを表示するという意味。
# def show_data(data)は、
# show_dataという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts "名前:#{data[:name]}"は、選択された人の名前を表示するという意味。
# puts "年齢:#{data[:age]}"は、選択された人の年齢を表示するという意味。
# puts "身長:#{data[:tall]}"は、選択された人の身長を表示するという意味。
# puts "体重:#{data[:weight]}"は、選択された人の体重を表示するという意味。
# puts "BMI:#{data[:bmi]}"は、選択された人のBMIを表示するという意味。
# data = []は、空の配列を作成し、dataという変数に代入するという意味。
# while trueは、無限ループを作るという意味。
# puts "選択してください"は、選択してくださいという文字列を表示するという意味。
# puts "[0]登録する"は、[0]登録するという文字列を表示するという意味。
# puts "[1]データを確認する"は、
# [1]データを確認するという文字列を表示するという意味。
# puts "[2]終了する"は、[2]終了するという文字列を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してinputという変数に代入するという意味。
# if input == 0は、inputが0かどうかを判定する条件式。
# register_data(data)は、inputが0の場合に実行される処理で、
# register_dataメソッドを呼び出すという意味。
# elsif input == 1は、inputが1かどうかを判定する条件式。
# show_data_list(data)は、inputが1の場合に実行される処理で、
# show_data_listメソッドを呼び出すという意味。
# elsif input == 2は、inputが2かどうかを判定する条件式。
# exitは、inputが2の場合に実行される処理で、プログラムを終了するという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "無効な値です"は、無効な値ですという文字列を表示するという意味。
