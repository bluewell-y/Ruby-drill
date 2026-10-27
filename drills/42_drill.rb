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
    return power
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  data.each_with_index do |person, index|
    puts "#{index + 1}: #{person[:name]}"
  end
  input = gets.to_i - 1
  person = data[input]
  puts "名前: #{person[:name]}"
  puts "パンチ力: #{person[:punch]}"
  puts "キック力: #{person[:kick]}"
  puts "ジャンプ力: #{person[:jump]}"

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

## コードの意味
# def register_data(data)は、
# register_dataという名前のメソッドを作るという意味で、
# dataという引数を受け取ります。
# puts '名前を入力してください'は、
# 名前を入力してくださいという文字列を表示するという意味。
# name = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてnameという変数に代入するという意味。
# puts 'パンチ力を入力してください(0 ~ 100)'は、
# パンチ力を入力してください(0 ~ 100)という文字列を表示するという意味。
# punch = power(gets.to_i)は、ユーザーの入力を受け取り、
# それを整数に変換してpowerメソッドに渡し、
# その結果をpunchという変数に代入するという意味。
# puts 'キック力を入力してください(0 ~ 100)'は、
# キック力を入力してください(0 ~ 100)という文字列を表示するという意味。
# kick = power(gets.to_i)は、ユーザーの入力を受け取り、
# それを整数に変換してpowerメソッドに渡し、
# その結果をkickという変数に代入するという意味。
# puts 'ジャンプ力を入力してください(0 ~ 100)'は、
# ジャンプ力を入力してください(0 ~ 100)という文字列を表示するという意味。
# jump = power(gets.to_i)は、ユーザーの入力を受け取り、
# それを整数に変換してpowerメソッドに渡し、その結果をjumpという変数に代入するという意味。
# person = {name: name, punch: punch, kick: kick, jump: jump}は、
# 名前、パンチ力、キック力、ジャンプ力の情報を持つハッシュを作成し、
# それをpersonという変数に代入するという意味。
# data << personは、personハッシュをdata配列に追加するという意味。
# def power(power)は、powerという名前のメソッドを作るという意味。