def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts true
  else
    puts false
  end
end

# 呼び出し例
sleep_in(false, false)  # => true
sleep_in(true, false)   # => false
sleep_in(false, true)   # => true

## 解説

## これは何をするコードか？
# 平日かどうかと、休暇かどうかの2つの条件をもとに、「寝坊してもいいかどうか」を判断するプログラム。

## ==（等価演算子）とは
# 2つの値（==の左右にあるもの）が等しいかどうかを比較するもの。

## !=（不等価演算子）とは
# 2つの値（!=の左右にあるもの）が等しくないかどうかを比較するもの。

## ||（論理和演算子）とは
# 2つの条件を「または」でつなぐもの。

## コードの意味
# 平日じゃない、または、休暇である。
# このどちらかが当てはまるならtrue（遅くまで寝られる）と表示。
# どちらも当てはまらない（＝平日で、しかも休暇じゃない）場合は
# false（早起きしなきゃいけない）と表示。
 

## 別コード
# def sleep_in(is_weekday, is_vacation)
#   puts !is_weekday || is_vacation
# end
# というコードも同じ意味である。

## !は反対を意味する。（例：!is_weekdayは、「平日ではない」という意味になる）