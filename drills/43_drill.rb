def hero_rank(punch, kick, jump)
  total = punch + kick + jump
  if total >= 240
    "A"
  elsif total >= 180
    "B"
  elsif total >= 120
    "C"
  else
    "D"
  end
end

def register_data(data)
  puts '名前を入力してください'
  name = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = power(gets.to_i)
  puts 'キック力を入力してください(0 ~ 100)'
  kick = power(gets.to_i)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = power(gets.to_i)

  person = {name: name, punch: punch, kick: kick, jump: jump}
  data << person
end

def power(power)
  while power > 100
    puts '100以下の数字を入力してください'
    power = gets.to_i
  end
  power
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  person = data[gets.to_i - 1]
  puts "名前: #{person[:name]}"
  puts "パンチ力: #{person[:punch]}"
  puts "キック力: #{person[:kick]}"
  puts "ジャンプ力: #{person[:jump]}"
  puts "ヒーローランク: #{hero_rank(person[:punch], person[:kick], person[:jump])}"
end

data = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end

## 解説
## 何をするコードですか？
# データを登録するか、データを確認するか、終了するかを
# 選択するコードです。
# 登録されたデータは、
# 名前、パンチ力、キック力、ジャンプ力の情報を持つハッシュとして
# 配列に保存されます。
# また、ヒーローランクを計算して表示する機能も追加されています。

## コードの意味
# def hero_rank(punch, kick, jump)は、
# hero_rankという名前のメソッドを作るという意味で、
# パンチ力、キック力、ジャンプ力の3つの引数を受け取ります。
# total = punch + kick + jumpは、
# パンチ力、キック力、ジャンプ力の合計を計算してtotalという変数に代入する
# という意味です。
# if total >= 240は、totalが240以上かどうかを判定する条件式です。
# "A"は、条件が真の場合に返される文字列です。
# elsif total >= 180は、totalが180以上かどうかを判定する条件式です。
# "B"は、条件が真の場合に返される文字列です。
# elsif total >= 120は、totalが120以上かどうかを判定する条件式です。
# "C"は、条件が真の場合に返される文字列です。
# elseは、上記の条件に当てはまらない場合の処理です。
# "D"は、条件が偽の場合に返される文字列です。
# def register_data(data)は、
# register_dataという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts '名前を入力してください'は、
# 名前を入力してくださいという文字列を表示するという意味です。
# name = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてnameという変数に代入するという意味です。
# puts 'パンチ力を入力してください(0 ~ 100)'は、
# パンチ力を入力してください(0 ~ 100)という文字列を表示するという意味です。
# punch = power(gets.to_i)は、ユーザーの入力を整数に変換し、
# それをpowerメソッドに渡してパンチ力を取得し、
# punchという変数に代入するという意味です。
# puts 'キック力を入力してください(0 ~ 100)'は、
# キック力を入力してください(0 ~ 100)という文字列を表示するという意味です。
# kick = power(gets.to_i)は、ユーザーの入力を整数に変換し、
# それをpowerメソッドに渡してキック力を取得し、
# kickという変数に代入するという意味です。
# puts 'ジャンプ力を入力してください(0 ~ 100)'は、
# ジャンプ力を入力してください(0 ~ 100)という文字列を表示するという意味です。
# jump = power(gets.to_i)は、ユーザーの入力を整数に変換し、
# それをpowerメソッドに渡してジャンプ力を取得し、
# jumpという変数に代入するという意味です。
# person = {name: name, punch: punch, kick: kick, jump: jump}は、
# 名前、パンチ力、キック力、ジャンプ力の情報を持つハッシュを作成し、
# それをpersonという変数に代入するという意味です。
# data << personは、personハッシュをdata配列に追加するという意味です。
# def power(power)は、powerという名前のメソッドを作るという意味で、
# powerという引数を受け取ります。
# while power > 100は、powerが100より大きい場合にループする条件式です。
# puts '100以下の数字を入力してください'は、
# 100以下の数字を入力してくださいという文字列を表示するという意味です。
# power = gets.to_iは、ユーザーの入力を整数に変換し、
# それをpowerという変数に代入するという意味です。
# return powerは、powerの値を返すという意味です。
# def show_data_list(data)は、
# show_data_listという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts '見たい人の番号を選択してください'は、
# 見たい人の番号を選択してくださいという文字列を表示するという意味です。
# data.each_with_index do |person, index|は、
# data配列の各要素とそのインデックスを繰り返し処理するための構文です。
# puts "#{index + 1}: #{person[:name]}"は、
# インデックスと名前を表示するという意味です。
# person = data[gets.to_i - 1]は、
# ユーザーの入力に基づいて選択されたpersonハッシュを取得するという意味です。
# puts "名前: #{person[:name]}"は、
# 選択された人の名前を表示するという意味です。
# puts "パンチ力: #{person[:punch]}"は、
# 選択された人のパンチ力を表示するという意味です。
# puts "キック力: #{person[:kick]}"は、
# 選択された人のキック力を表示するという意味です。
# puts "ジャンプ力: #{person[:jump]}"は、
# 選択された人のジャンプ力を表示するという意味です。
# puts "ヒーローランク: #{hero_rank(person[:punch], person[:kick], person[:jump])}"は、
# 選択された人のヒーローランクを計算して表示するという意味です。
# data = []は、空の配列を作成し、
# それをdataという変数に代入するという意味です。
# while trueは、無限ループを作るという意味です。
# puts '選択してください'は、
# 選択してくださいという文字列を表示するという意味です。
# puts '[0]登録する'は、
# [0]登録するという文字列を表示するという意味です。
# puts '[1]データを確認する'は、
# [1]データを確認するという文字列を表示するという意味です。
# puts '[2]終了する'は、
# [2]終了するという文字列を表示するという意味です。
# input = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してinputという変数に代入するという意味です。
# if input == 0は、inputが0かどうかを判定する条件式です。
# register_data(data)は、inputが0の場合に実行される処理で、
# register_dataメソッドを呼び出し、data配列を渡すという意味です。
# elsif input == 1は、inputが1かどうかを判定する条件式です。
# show_data_list(data)は、inputが1の場合に実行される処理で、
# show_data_listメソッドを呼び出し、data配列を渡すという意味です。
# elsif input == 2は、inputが2かどうかを判定する条件式です。
# exitは、inputが2の場合に実行される処理で、プログラムを終了するという意味です。
# elseは、上記の条件に当てはまらない場合の処理です。
# puts '無効な値です'は、無効な値ですという文字列を表示するという意味です。