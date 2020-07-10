str="fighi".split('')
if str.length!=str.uniq.length
  puts false
  return
end
str=str.sort.join('')
alphabet=('a'..'z').to_a.join('')
puts alphabet.include?(str)