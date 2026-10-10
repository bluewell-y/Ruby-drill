def include_cat_and_dog?(str)
  if str.include?("cat") && str.include?("dog")
    puts true
  else
    puts false
  end
end

# 呼び出し例
include_cat_and_dog?("catdog")

## 解説
## 何をするコードですか？
# 文字列に「cat」と「dog」の両方が含まれているかどうかを判定するコードです。

## コードの意味
# def include_cat_and_dog?(str)は、strという引数を受け取る、include_cat_and_dog?という名前のメソッドを作るという意味。
# if str.include?("cat") && str.include?("dog")は、strに「cat」と「dog」の両方が含まれているかどうかを判定する条件式。
# puts trueは、条件が満たされた場合にtrueを表示するという意味。
# elseは、ifの条件が満たされなかった場合に実行される処理を指定する。
# puts falseは、条件が満たされなかった場合にfalseを表示するという意味。
