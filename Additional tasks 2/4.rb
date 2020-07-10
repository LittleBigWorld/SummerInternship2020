str="defdjskdlskdlsdef"
(0...str.length / 2).each do |i|
  tmp1=str[0,str.length/2-i]
  tmp2=str[(str.length.to_f/2).round(half: :up)+i,str.length+1]
  if tmp1==tmp2
    puts tmp1.length
    break
  end
end
