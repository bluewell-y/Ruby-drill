def register_car(cars)
  puts "車種を入力してください"
  name = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力してください"
  distance = gets.to_f
  puts "乗車人数を入力してください"
  passengers = gets.to_i

  cars << { name: name, distance: distance, passengers: passengers }
end

def show_cars(cars)
  puts "見たい車種の番号を入力してください"
  cars.each_with_index do |car, index|
    puts "[#{index + 1}]#{car[:name]}"
  end

  car = cars[gets.to_i - 1]
  puts "車種:#{car[:name]}"
  puts "1Lあたりの走行可能距離:#{car[:distance]}km/l"
  puts "乗車人数:#{car[:passengers]}人"
end

cars = []
while true
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"

  case gets.to_i
  when 0
    register_car(cars)
  when 1
    show_cars(cars)
  when 2
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
# def register_car(cars)は、
# register_carという名前のメソッドを作るという意味で、
# carsという引数を受け取ります。
# puts "車種を入力してください"は、
# 車種を入力してくださいという文字列を表示するという意味。
# name = gets.chompは、ユーザーの入力を受け取り、
# それを文字列としてnameという変数に代入するという意味。
# puts "1Lあたりの走行可能距離(km/l)を入力してください"は、
# 1Lあたりの走行可能距離(km/l)を入力してくださいという文字列を表示するという意味。
# distance = gets.to_fは、ユーザーの入力を受け取り、
# それを浮動小数点数に変換してdistanceという変数に代入するという意味。
# puts "乗車人数を入力してください"は、
# 乗車人数を入力してくださいという文字列を表示するという意味。
# passengers = gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してpassengersという変数に代入するという意味。
# cars << { name: name, distance: distance, passengers: passengers }は、
# ハッシュを作成し、それをcars配列に追加するという意味。
# def show_cars(cars)は、show_carsという名前のメソッドを作るという意味で、
# carsという引数を受け取ります。
# puts "見たい車種の番号を入力してください"は、
# 見たい車種の番号を入力してくださいという文字列を表示するという意味。
# cars.each_with_index do |car, index|は、
# cars配列の各要素に対して処理を行うという意味で、
# carは現在の要素、indexはその要素のインデックスを表します。
# puts "[#{index + 1}]#{car[:name]}"は、
# 車種の番号と名前を表示するという意味。
# car = cars[gets.to_i - 1]は、ユーザーの入力を受け取り、
# それを整数に変換してインデックスとして使用し、
# cars配列から対応する車種のハッシュを取得するという意味。
# puts "車種:#{car[:name]}"は、車種の名前を表示するという意味。
# puts "1Lあたりの走行可能距離:#{car[:distance]}km/l"は、
# 1Lあたりの走行可能距離を表示するという意味。
# puts "乗車人数:#{car[:passengers]}人"は、
# 乗車人数を表示するという意味。
# cars = []は、空の配列を作成し、それをcarsという変数に代入するという意味。
# while trueは、無限ループを作るという意味。
# puts "[0]データの登録"は、[0]データの登録という文字列を表示するという意味。
# puts "[1]データの確認"は、[1]データの確認という文字列を表示するという意味。
# puts "[2]プログラムの終了"は、
# [2]プログラムの終了という文字列を表示するという意味。
# case gets.to_iは、ユーザーの入力を受け取り、
# それを整数に変換してcase文で分岐するという意味。
# when 0は、ユーザーが0を入力した場合の処理。
# register_car(cars)は、register_carメソッドを呼び出し、
# cars配列を引数として渡すという意味。
# when 1は、ユーザーが1を入力した場合の処理。
# show_cars(cars)は、show_carsメソッドを呼び出し、
# cars配列を引数として渡すという意味。
# when 2は、ユーザーが2を入力した場合の処理。
# exitは、プログラムを終了するという意味。
# elseは、上記の条件に当てはまらない場合の処理。
# puts "無効な値です"は、無効な値ですという文字列を表示するという意味。