str="edcbaeeeabcdeeeeeedcb"
weights=Array.new
maxWeight=0
for i in 0...str.length
  weights[i]=0
  for j in i+1...str.length
    if str[i]==str[j]
      weights[i]=j-i
    end
  end
  if weights[i]>maxWeight
    maxWeight=weights[i]
  end
end
if maxWeight!=0
  minSymbol='z'
  for i in 0...str.length
    if weights[i]==maxWeight
      if str[i]<minSymbol
        minSymbol=str[i]
      end
    end
  end
end
puts minSymbol