def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end
# 呼び出し例
end_other('Hiabc', 'abc') → True
end_other('AbC', 'HiaBc') → True
end_other(‘abc’, ‘HaIoBc’) → False

## 解説

## これは何をするコードか？
# 2つの文字列を比較し、どちらかの文字列がもう一方の文字列の末尾に含まれているかどうかを判定するプログラム。

## downcaseメソッド
# 文字列を小文字に変換するためのメソッド。

## コードの意味
# end_otherというメソッドを定義する。引数としてaとbを受け取る。
# aとbを小文字に変換し、それぞれa_downとb_downに代入する。
# aとbの長さをそれぞれa_lenとb_lenに代入する。
# if文で、b_downの末尾がa_downと一致するか、またはa_downの末尾がb_downと一致するかを判定する。
# 一致する場合は"True"を表示し、一致しない場合は"False"を表示する。