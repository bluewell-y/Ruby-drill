class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です"
  end
end

student = Student.new("山田太郎", 20)
student.introduce

## 解説
## 何をするコードですか？
# Personクラスを継承したStudentクラスを作り、名前と年齢を表示するコードです。

## コードの意味
# class Personは、Personクラスを作るという意味。
# def initialize(name, age)は、nameとageという引数を受け取る、initializeという名前のメソッドを作るという意味。
# @name = nameは、インスタンス変数@nameに引数nameの値を代入するという意味。
# @age = ageは、インスタンス変数@ageに引数ageの値を代入するという意味。
# class Student < Personは、Personクラスを継承したStudentクラスを作るという意味。
# def introduceは、introduceという名前のメソッドを作るという意味。
# puts "私の名前は#{@name}です。#{@age}歳です"は、インスタンス変数@nameと@ageの値を表示するという意味。
# student = Student.new("山田太郎", 20)は、Studentクラスのインスタンスを作り、studentという変数に代入するという意味。
# student.introduceは、studentオブジェクトのintroduceメソッドを呼び出すという意味。
