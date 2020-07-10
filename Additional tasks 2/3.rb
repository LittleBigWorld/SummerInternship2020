str="aaazbbbfftaaaebbhhhhzzzaaa"
def check_print (str)
  num=0
  errors=0
  str.each_char do |ch|
    unless ('a'..'f').include?(ch)
      errors += 1
    end
    num+=1
  end
  "#{errors}/#{num}"
end
puts check_print(str)