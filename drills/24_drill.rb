def xyz_there(str) 
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
puts xyz_there('abcxyz')   #=> true
puts xyz_there('abc.xyz')  #=> false
puts xyz_there('xyz.abc')  #=> true
puts xyz_there('azbycx')   #=> false
puts xyz_there('a.zbycx')  #=> false

## 解説
## これは何をするコードか？
# 引数として渡された文字列に"xyz"が含まれているかどうかを判定するメソッドxyz_thereを定義し、
# "xyz"が含まれている場合はTrue、".xyz"が含まれている場合はFalse、
# それ以外の場合はFalseを表示するプログラム

## include?メゾットとは？
# include?メソッドは、文字列や配列に特定の要素が含まれているかどうかを判定するためのメソッドです。
# 文字列に対して使用する場合、引数として渡された文字列が含まれている場合はtrueを返し、
# 含まれていない場合はfalseを返します。 

## コードの意味
# xyz_thereメソッドを定義する。
# 引数として渡された文字列に".xyz"が含まれている場合はFalseを表示する。
# 引数として渡された文字列に"xyz"が含まれている場合はTrueを表示する。
# それ以外の場合はFalseを表示する 。
# 呼び出し例として、xyz_thereメソッドを呼び出し、
# 引数として渡された文字列に"xyz"が含まれているかどうかを判定し、結果を表示する。 

## 別回答
def xyz_there(str)
  puts !str.include?(".xyz") && str.include?("xyz")
end

## 解説
## これは何をするコードか？
# 引数として渡された文字列に"xyz"が含まれているかどうかを判定するメソッドxyz_thereを定義し、
# "xyz"が含まれている場合はTrue、".xyz"が含まれている場合はFalse、
# それ以外の場合はFalseを表示するプログラム

## コードの意味
# xyz_thereメソッドを定義する。
# 引数として渡された文字列に".xyz"が含まれていない場合かつ"xyz"が含まれている場合はTrueを表示する。
# それ以外の場合はFalseを表示する。
# 呼び出し例として、xyz_thereメソッドを呼び出し、
# 引数として渡された文字列に"xyz"が含まれているかどうかを判定し、結果を表示する。