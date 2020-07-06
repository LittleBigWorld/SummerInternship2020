arr=Array.new
arr[0]=gets.chomp.to_i
arr[1]=gets.chomp.to_i
arr[2]=gets.chomp.to_i
max=-1
tmp=arr[0]+arr[1]+arr[2]
if tmp>max; max=tmp end
tmp=arr[0]+arr[1]*arr[2]
if tmp>max; max=tmp end
tmp=arr[0]*arr[1]+arr[2]
if tmp>max; max=tmp end
tmp=arr[0]*arr[1]*arr[2]
if tmp>max; max=tmp end
puts(max)