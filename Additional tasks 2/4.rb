str="abcdefdcbaa"
count=0
for i in 0..str.length/2
  if str[i]==str[str.length-i-1]
    count+=1
  else
    break
  end
end
puts count