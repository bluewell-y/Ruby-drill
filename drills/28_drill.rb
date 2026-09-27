def register_book(books)
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i
  book = { author: author, title: title, price: price }
  books << book
end

def show_books(books)
  total = 0
  books.each do |book|
    total += book[:price]
  end
  average = total / books.length
  puts "平均価格:#{average}円"

  puts "見たい番号を入力してください"
  index = 1
  books.each do |book|
    puts "#{index}: #{book[:title]}"
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1])
end

def show_detail(book)
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
   register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end

## 解説
## 何をするコードですか？
# 本を登録して、あとから一覧で見返せる、簡単な蔵書管理アプリで、
# メニューから番号を選んで操作する、ターミナル上で動くプログラム


## コードの意味
# def register_book(books)は、booksという配列を受け取る、
# register_bookという名前のメソッドを作る。
# 本を新しく登録するための処理をここにまとめている。

# puts '著者を入力してください'
# author = gets.chomp
# puts 'タイトルを入力してください'
# title = gets.chomp
# puts '価格を入力してください'
# price = gets.to_i
# は、著者・タイトル・価格を、それぞれ順番に入力してもらい、
# author・title・priceという変数に入れるという意味。
# gets.chomp → 入力された文字列を受け取り、末尾の改行だけを取り除く（文字列として扱いたいためto_iは使わない）
# gets.to_i → 入力された文字列を、数値（整数）に変換する（価格は数字として扱いたいため）

#  book = { author: author, title: title, price: price }
#  books << book
# end
# は、入力してもらった3つの値を、1つのbookというハッシュ（データのまとまり）にする。
# そして、それをbooks配列の末尾に追加するという意味。
# <<は「配列の最後に要素を追加する」という記号。

# def show_books(books)
# は、books配列を受け取る、show_booksという名前のメソッドを作るという意味。
# 本の一覧を見せるための処理をまとめている。

#   total = 0
#  books.each do |book|
#    total += book[:price]
#  end
#  average = total / books.length
#  puts "平均価格:#{average}円"
# は、booksに入っている本を1冊ずつ確認しながら、価格をtotalに足し合わせていく。
# 全部足し終わったら、本の冊数で割って平均価格を求め、画面に表示させるという意味。

#   puts "見たい番号を入力してください"
#  index = 1
#  books.each do |book|
#    puts "#{index}: #{book[:title]}"
#    index += 1
#  end
# は、『見たい番号を入力してください』と表示したあと、
# booksの中身を1冊ずつ取り出して、『番号: タイトル』という形で一覧を表示する。
# 表示するたびに番号（index）を1つずつ増やしていくという意味。

#   input = gets.to_i
#  show_detail(books[input - 1])
#end
# は、ユーザーが入力した番号を受け取り、それに対応する本のデータをbooks配列から取り出して、
# show_detailメソッドに渡すという意味。
# books[input - 1]で-1しているのは、画面上の表示は1から始まっているのに対し、
# 配列のインデックス番号は0から始まっているためのズレを調整している（1番目の本は、配列では0番目に入っている）。

# def show_detail(book)
#  puts "著者 #{book[:author]}"
#  puts "タイトル #{book[:title]}"
#  puts "価格 #{book[:price]}円"
#end
# は、1冊分の本のデータ（book）を受け取り、その著者・タイトル・価格を画面に表示するという意味。
# book[:author]のように[ ]で指定することで、ハッシュの中から対応する値を取り出せる。
 
# books = []
# は、空の配列を用意し、booksという変数に入れるという意味。
# これから登録される本のデータは、すべてこの配列に集まる。

# while true do
# は、これ以降の処理を、永遠に繰り返すという意味。
# ユーザーがexit（2を選ぶ）するまで、ずっとメニュー表示が続く。

#  puts "番号を入力してください"
#  puts "0: 本を登録する"
#  puts "1: 本の一覧を見る"
#  puts "2: 終了する"
# は、メニュー（選択肢）を画面に表示している部分

#   case gets.to_i
#  when 0
#   register_book(books)
#  when 1
#    show_books(books)
#  when 2
#    exit
#  else
#    puts '無効な値です'
#  end
#end
# は、入力された番号によって、実行する処理を切り替えという意味。
# 0が入力されたら → register_book(books)を呼び、本の登録処理を行う
# 1が入力されたら → show_books(books)を呼び、一覧表示（＋今回追加した平均価格の表示）を行う
# 2が入力されたら → exitでプログラムを終了する
# それ以外の数字が入力されたら → 「無効な値です」と表示する