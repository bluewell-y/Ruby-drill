def fortune(birthday)
  results = ["凶", "中吉", "吉", "大吉"].shuffle
  puts "今日の運勢は#{results[birthday * rand(10) % 4]}です"
end

puts "誕生日を入力してください（例：4月3日なら403）"
fortune(gets.to_i)

## 解説
## 何をするコードですか？
# 誕生日を入力すると、今日の運勢をランダムに表示するコードです。

## コードの意味
# def fortune(birthday)は、birthdayという引数を受け取る、fortuneという名前のメソッドを作るという意味。
# results = ["凶", "中吉", "吉", "大吉"].shuffleは、配列["凶", "中吉", "吉", "大吉"]をシャッフルして、resultsという変数に代入するという意味。
# puts "今日の運勢は#{results[birthday * rand(10) % 4]}です"は、results配列の中からランダムに1つの要素を取り出して表示するという意味。
# birthday * rand(10) % 4は、誕生日と0から9までのランダムな数値を掛け合わせて、4で割った余りを計算するという意味。