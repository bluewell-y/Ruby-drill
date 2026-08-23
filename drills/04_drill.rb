def count_code(str)
  puts str.index('code') + 1
end

# 呼び出し例
count_code("codexxcode")  # => 1
count_code("aaacodebbb")  # => 4
count_code("cozexxcode")  # => 7