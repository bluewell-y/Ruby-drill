def movie_info(movie, data)
  puts movie[data]
end

movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

puts "以下から一つを選んで入力してください。
  ・title
  ・genre
  ・year"

info = gets.chomp

movie_info(movie, info)

## 解説
## 何をするコードですか？
# 映画の情報を格納したハッシュから、ユーザーが選んだ情報を表示するコードです。

## コードの意味
# def movie_info(movie, data)は、movieとdataという引数を受け取る、movie_infoという名前のメソッドを作るという意味。
# puts movie[data]は、movieハッシュの中から、dataで指定されたキーに対応する値を表示するという意味。
# movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}は、映画の情報を格納したハッシュを作るという意味。
# puts "以下から一つを選んで入力してください。..."は、ユーザーに入力を促すメッセージを表示するという意味。
# info = gets.chompは、ユーザーが入力した文字列を受け取り、末尾の改行だけを取り除いてinfoという変数に代入するという意味。
# movie_info(movie, info)は、movie_infoメソッドを呼び出し、movieとinfoを引数として渡すという意味。