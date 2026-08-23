def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour > 20)
    puts "NG"
  else
    puts "OK"
  end
end

# 呼び出し例
parrot_trouble(true, 6)   # => NG
parrot_trouble(true, 7)   # => OK
parrot_trouble(false, 6)  # => OK
parrot_trouble(false, 7)  # => OK