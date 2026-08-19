def missing_char(str, n)
  str = str.dup          # 元の文字列を変更しないよう複製
  str.slice!(n - 1)      # n番目の文字はインデックスでいうと n-1 番目
  str
end

# 呼び出し例
puts missing_char('kitten', 1) # => "itten"
puts missing_char('kitten', 2) # => "ktten"
puts missing_char('kitten', 4) # => "kiten"