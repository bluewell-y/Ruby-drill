def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例
count_hi('abc hi ho')  # => 1
count_hi('ABChi hi')   # => 2
count_hi('hihi')       # => 2