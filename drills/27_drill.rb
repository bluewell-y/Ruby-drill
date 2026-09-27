class Book
  attr_reader :title, :price

  def initialize(title, price)
   @title = title
   @price = price
  end
end

book = Book.new("テスト本", 1000)
puts book.title
puts "#{book.price}円"

## 解説
## これは何をするコードか？
# 本のタイトルと価格を持つBookクラスを作り、
# 実際に本のインスタンス（データ）を1つ作って、
# そのタイトルと価格を画面に表示するプログラム

## コードの意味
# 本の設計図（Bookクラス）を用意し、その中には『タイトル』と『価格』を保存できる仕組みと、
# それらを外から読み取れる仕組み（attr_reader）を持たせる。
# 次に、その設計図をもとに『テスト本・1000円』という具体的な1冊の本のデータを作り、
# そのタイトルと価格を画面に表示する。