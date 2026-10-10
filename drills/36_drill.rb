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
# 本を登録して、あとから一覧で見返せる、簡単な�蔵書管理アプリで、
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
# は、author・title・priceをまとめて、bookというハッシュに入れて、booksという配列に追加するという意味。