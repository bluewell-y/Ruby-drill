class Dog
  @@type = "犬"

  def initialize(name, dog_type)
    @name = name
    @dog_type = dog_type
  end

  def self.say
    puts "ワンワン"
  end

  def say_type
    puts "わたしは#{@@type}です"
  end

  def self_introduction
    puts "わたしの名前は#{@name}で種類は#{@dog_type}です"
  end
end

dog = Dog.new("マロン", "トイプードル")
Dog.say
dog.say_type
dog.self_introduction

## 解説
## 何をするコードですか？
# Dogクラスを定義し、インスタンス変数とクラス変数を使って
# 犬の情報を管理するコードです。
# クラスメソッドとインスタンスメソッドを使って、
# 犬の鳴き声や種類、自己紹介を表示することができます。

## コードの意味
# class Dogは、Dogクラスを定義するという意味です。
# @@type = "犬"は、クラス変数@@typeを定義し、
# "犬"という文字列を代入するという意味です。
# def initialize(name, dog_type)は、initializeメソッドを定義し、
# インスタンス変数@nameと@dog_typeを初期化するという意味です。
# def self.sayは、クラスメソッドsayを定義するという意味です。
# puts "ワンワン"は、"ワンワン"という文字列を表示するという意味です。
# def say_typeは、インスタンスメソッドsay_typeを定義するという意味です。
# puts "わたしは#{@@type}です"は、
# クラス変数@@typeの値を表示するという意味です。
# def self_introductionは、
# インスタンスメソッドself_introductionを定義するという意味です。
# puts "わたしの名前は#{@name}で種類は#{@dog_type}です"は、
# インスタンス変数@nameと@dog_typeの値を表示するという意味です。
# dog = Dog.new("マロン", "トイプードル")は、
# Dogクラスのインスタンスを作成し、変数dogに代入するという意味です。
# Dog.sayは、Dogクラスのクラスメソッドsayを呼び出すという意味です。
# dog.say_typeは、dogインスタンスのインスタンスメソッドsay_typeを呼び出す
# という意味です。
# dog.self_introductionは、
# dogインスタンスのインスタンスメソッドself_introductionを呼び出す
# という意味です。
