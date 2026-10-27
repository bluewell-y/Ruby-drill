def register_data(cars)
  puts "車種の入力をして下さい。"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"
  fuel_economy = gets.to_f
  puts "乗車可能人数を入力して下さい。"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  cars << car
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    puts "[#{index}]: #{car[:type]}"
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts car[:type]
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"
  puts "これから走る距離(km)を入力して下さい。"
  distance = gets.to_f
  puts "ガソリン消費量:#{(distance / car[:fuel_economy]).round(1)}L"
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end

## 解説
## 何をするコードですか？
# データを登録するか、データを確認するか、終了するかを選択するコードです。
# 登録されたデータは、
# 車種、1Lあたりの走行可能距離、乗車人数の情報を持つハッシュとして
# 配列に保存されます。

## コードの意味
# def register_data(cars)は、
# register_dataという名前のメソッドを作るという意味で、
# carsという引数を受け取ります。
# puts "車種の入力をして下さい。"は、
# 車種の入力をして下さい。という文字列を表示するという意味。
# type = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてtypeという変数に代入するという意味。
# puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"は、
# 1Lあたりの走行可能距離(km/l)を入力して下さい。という文字列を表示するという意味。
# fuel_economy = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してfuel_economyという変数に代入するという意味。
# puts "乗車可能人数を入力して下さい。"は、
# 乗車可能人数を入力して下さい。という文字列を表示するという意味。
# capacity = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してcapacityという変数に代入するという意味。
# car = { type: type, fuel_economy: fuel_economy, capacity: capacity }は、
# type、fuel_economy、capacityの値を持つハッシュを作成し、
# それをcarという変数に代入するという意味。
# cars << carは、作成したハッシュcarを配列carsに追加するという意味。
# def show_cars(cars)は、show_carsという名前のメソッドを作るという意味で、
# carsという引数を受け取ります。
# cars.each_with_index do |car, index|は、
# 配列carsの各要素に対して、carという変数に要素を、
# indexという変数にインデックスを代入してブロックを実行するという意味。
# puts "[#{index}]: #{car[:type]}"は、
# インデックスと車種を表示するという意味。
# puts "確認したい番号を入力して下さい。"は、
# 確認したい番号を入力して下さい。という文字列を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してinputという変数に代入するという意味。
# car = cars[input]は、配列carsのinput番目の要素を取得し、
# それをcarという変数に代入するという意味。
# if carは、carが存在するかどうかを判定する条件式。
# show_data(car)は、carが存在する場合に実行される処理で、
# show_dataメソッドを呼び出すという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "該当する番号はありません。"は、
# 該当する番号はありません。という文字列を表示するという意味。
# def show_data(car)は、show_dataという名前のメソッドを作るという意味で、
# carという引数を受け取ります。
# puts car[:type]は、車種を表示するという意味。
# puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"は、
# 1Lあたりの走行可能距離を表示するという意味。
# puts "乗車人数:#{car[:capacity]}人"は、乗車人数を表示するという意味。
# puts "これから走る距離(km)を入力して下さい。"は、
# これから走る距離(km)を入力して下さい。という文字列を表示するという意味。
# distance = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してdistanceという変数に代入するという意味。
# puts "ガソリン消費量:#{(distance / car[:fuel_economy]).round(1)}L"は、
# ガソリン消費量を計算し、それを表示するという意味。
# cars = []は、空の配列を作成し、それをcarsという変数に代入するという意味。
# while true doは、無限ループを作るという意味。
# puts "番号を入力して下さい"は、
# 番号を入力して下さいという文字列を表示するという意味。
# puts "[0]:登録をする"は、
# [0]:登録をするという文字列を表示するという意味。
# puts "[1]:データを確認する"は、
# [1]:データを確認するという文字列を表示するという意味。
# puts "[2]:終了する"は、[2]:終了するという文字列を表示するという意味。
# input = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてinputという変数に代入するという意味。
# case inputは、inputの値によって処理を分岐させる条件式。
# when "0"は、inputが"0"の場合の処理。
# register_data(cars)は、register_dataメソッドを呼び出し、
# cars配列にデータを登録するという意味。
# when "1"は、inputが"1"の場合の処理。
# show_cars(cars)は、show_carsメソッドを呼び出し、
# cars配列のデータを確認するという意味。
# when "2"は、inputが"2"の場合の処理。
# exitは、プログラムを終了するという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "無効な値です"は、無効な値ですという文字列を表示するという意味。