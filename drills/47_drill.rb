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
  puts "車種:#{car[:type]}"
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f
  calculate_fuel_consumption(car, input_distance)

  puts "乗車する人数を入力して下さい。"
  input_passengers = gets.to_i
  check_capacity(car, input_passengers)
end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
end

def check_capacity(car, passengers)
  difference = car[:capacity] - passengers
  if difference >= 0
    puts "あと#{difference}人乗ることができます。"
  else
    puts "#{difference.abs}人定員オーバーです。"
  end
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
# 車種、1Lあたりの走行可能距離、乗車人数の情報を持つハッシュとして配列に保存されます。

## コードの意味
# def register_data(cars)は、register_dataという名前のメソッドを作るという意味で、
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
# type、fuel_economy、capacityの情報を持つハッシュを作成し、
# それをcarという変数に代入するという意味。
# cars << carは、carsという配列にcarを追加するという意味。
# def show_cars(cars)は、show_carsという名前のメソッドを作るという意味で、
# carsという引数を受け取ります。
# cars.each_with_index do |car, index|は、
# carsという配列の要素を1つずつ取り出し、それをcarという変数に代入し、同時にその要素のインデックスをindexという変数に代入するという意味。
# puts "[#{index}]: #{car[:type]}"は、
# インデックスと車種を表示するという意味。
# input = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してinputという変数に代入するという意味。
# car = cars[input]は、carsという配列のinput番目の要素を取り出し、
# それをcarという変数に代入するという意味。
# if carは、carが存在する場合の処理を行うという意味。
# show_data(car)は、show_dataというメソッドを呼び出し、
# carを引数として渡すという意味。
# elseは、carが存在しない場合の処理を行うという意味。
# puts "該当する番号はありません。"は、
# 該当する番号はありません。という文字列を表示するという意味。
# def show_data(car)は、show_dataという名前のメソッドを作るという意味で、
# carという引数を受け取ります。
# puts "車種:#{car[:type]}"は、車種を表示するという意味。
# puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"は、
# 1Lあたりの走行可能距離を表示するという意味。
# puts "乗車人数:#{car[:capacity]}人"は、乗車人数を表示するという意味。
# puts "これから走る距離(km)を入力して下さい。"は、
# これから走る距離(km)を入力して下さい。という文字列を表示するという意味。
# input_distance = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してinput_distanceという変数に代入するという意味。
# calculate_fuel_consumption(car, input_distance)は、
# calculate_fuel_consumptionというメソッドを呼び出し、
# carとinput_distanceを引数として渡すという意味。
# puts "乗車する人数を入力して下さい。"は、
# 乗車する人数を入力して下さい。という文字列を表示するという意味。
# input_passengers = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してinput_passengersという変数に代入するという意味。
# check_capacity(car, input_passengers)は、
# check_capacityというメソッドを呼び出し、
# carとinput_passengersを引数として渡すという意味。
# def calculate_fuel_consumption(car, distance)は、
# calculate_fuel_consumptionという名前のメソッドを作るという意味で、
# carとdistanceという引数を受け取ります。
# fuel_consumption = distance / car[:fuel_economy]は、
# distanceをcarのfuel_economyで割った値をfuel_consumptionという変数に代入するという意味。
# puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"は、
# その目的地までは、ガソリンを消費する量を表示するという意味。
# def check_capacity(car, passengers)は、
# check_capacityという名前のメソッドを作るという意味で、
# carとpassengersという引数を受け取ります。
# difference = car[:capacity] - passengersは、
# carのcapacityからpassengersを引いた値をdifferenceという変数に代入するという意味。
# if difference >= 0は、differenceが0以上の場合の処理を行うという意味。
# puts "あと#{difference}人乗ることができます。"は、
# あと何人乗ることができるかを表示するという意味。
# elseは、differenceが0未満の場合の処理を行うという意味。
# puts "#{difference.abs}人定員オーバーです。"は、
# 定員オーバーの人数を表示するという意味。
# cars = []は、空の配列を作成し、それをcarsという変数に代入するという意味。
# while true doは、無限ループを作るという意味。
# puts "番号を入力して下さい"は、
# 番号を入力して下さい。という文字列を表示するという意味。
# puts "[0]:登録をする"は、[0]:登録をするという文字列を表示するという意味。
# puts "[1]:データを確認する"は、[1]:データを確認するという文字列を表示するという意味。
# puts "[2]:終了する"は、[2]:終了するという文字列を表示するという意味。
# input = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてinputという変数に代入するという意味。
# case inputは、inputの値によって処理を分岐させるという意味。
# when "0"は、inputが"0"の場合の処理を行うという意味。
# register_data(cars)は、register_dataというメソッドを呼び出し、
# carsを引数として渡すという意味。
# when "1"は、inputが"1"の場合の処理を行うという意味。
# show_cars(cars)は、show_carsというメソッドを呼び出し、
# carsを引数として渡すという意味。
# when "2"は、inputが"2"の場合の処理を行うという意味。
# exitは、プログラムを終了するという意味。
# elseは、それ以外の場合の処理を行うという意味。
# puts "無効な値です"は、無効な値です。という文字列を表示するという意味。
