def count_evens(array)
  puts array.count { |num| num.even? }
end

# 呼び出し例
count_evens([2, 1, 2, 3, 4])  # => 3
count_evens([2, 2, 0])        # => 3
count_evens([1, 3, 5])        # => 0