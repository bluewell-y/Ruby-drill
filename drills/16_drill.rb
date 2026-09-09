class Student
  def set_name(name)
    @name = name
  end

  def introduce
    puts "私の名前は#{@name}です。"
  end
end

student = Student.new
student.set_name("山田太郎")
student.introduce

## 解説
## これは何をするコードか？
# Studentクラスを定義し、set_nameメソッドで名前を設定し、introduceメソッドで自己紹介するプログラム。

## コードの意味
# Studentクラスを定義する。
# set_nameメソッドを定義し、引数としてnameを受け取り、インスタンス変数@nameに代入する。
# introduceメソッドを定義し、インスタンス変数@nameを使って自己紹介の文章を表示する。
# Studentクラスのインスタンスを作成し、set_nameメソッドで名前を設定し、introduceメソッドで自己紹介を表示する。