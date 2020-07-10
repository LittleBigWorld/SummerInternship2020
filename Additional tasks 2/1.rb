arr=[1,0,1,-1,0,-1,1,-1]
count=0
for i in 1...arr.length
  #if arr[i-1].positive?!=arr[i].positive? 0.positive?=false
  if (arr[i-1]<0 && arr[i]>=0) || (arr[i-1]>=0 && arr[i]<0)
    count+=1
  end
end
puts count
