def calculate arg1,arg2
  if arg1==0 || arg2<1
    false
  end
  "#{arg1*arg2}x^#{arg2-1}"
end
puts calculate(gets.chomp.to_i,gets.chomp.to_i)
