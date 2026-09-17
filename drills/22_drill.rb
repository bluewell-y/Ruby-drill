def binary_search(array, target)
  number_of_elements = array.length
  low = 0
  high = number_of_elements - 1

  while low <= high
    center = (low + high) / 2

    if array[center] == target
      puts "#{target}は配列の#{center}番目に存在します"
      return
    elsif array[center] < target
      low = center + 1
    else
      high = center - 1
    end
  end

  puts "#{target}は配列内に存在しません"
end

array = [1, 3, 5, 6, 9, 10, 13, 20, 26, 31]
puts "検索したい数字を入力してください"
number = gets.to_i
binary_search(array, number)

## 解説
## これは何をするコードか？
# 配列内で指定された要素を二分探索するメソッドbinary_searchを定義し、
# 引数として渡された配列内で指定された要素が存在するかどうかを判定し、
# 存在する場合はそのインデックスを表示し、
# 存在しない場合はその旨を表示するプログラム 

## コードの意味
# binary_searchメソッドを定義する。
# 引数として渡された配列の要素数を取得し、number_of_elements変数に代入する。
# 配列の最小インデックスをlow変数に、最大インデックスをhigh変数に代入する。
# whileループを 使用して、lowがhigh以下である限り、二分探索を繰り返す。
# 配列の中央のインデックスをcenter変数に代入する。
# 配列の中央の要素がtargetと等しい場合は、
# targetが配列内に存在することを表示し、メソッドを終了する。
# 配列の中央の要素がtargetより小さい場合は、lowをcenter + 1に更新する。
# 配列の中央の要素がtargetより大きい場合は、highをcenter - 1に更新する。
# whileループが終了した場合は、targetが配列内に存在しないことを表示する。
# 呼び出し例として、binary_searchメソッドを呼び出し、
# ユーザーから入力された数字が配列内に存在するかどうかを判定し、結果を表示する。