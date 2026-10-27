now = Time.new
weekdays = ["日", "月", "火", "水", "木", "金", "土"]

puts "現在は西暦#{now.year}年#{now.month}月#{now.day}日"
puts "#{weekdays[now.wday]}曜日です"

## 解説
## 何をするコードですか？
# 現在の日時を取得し、年、月、日、曜日を表示するコードです。

## コードの意味
# now = Time.newは、現在の日時を取得し、変数nowに代入するという意味。
# weekdays = ["日", "月", "火", "水", "木", "金", "土"]は、
# 曜日を表す文字列の配列を作成し、変数weekdaysに代入するという意味。
# puts "現在は西暦#{now.year}年#{now.month}月#{now.day}日"は、
# 現在の年、月、日を表示するという意味。
# puts "#{weekdays[now.wday]}曜日です"は、現在の曜日を表示するという意味。
# now.wdayは、現在の曜日を数値で取得し、
# weekdays配列のインデックスとして使用することで、
# 対応する曜日の文字列を取得するという意味。
