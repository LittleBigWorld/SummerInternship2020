number=gets.chomp.to_i
puts case number
     when 1
       "Mercury"
     when 2
       "Venus"
     when 3
       "Earth"
     when 4
       "Mars"
     when 5
       "Jupiter"
     when 6
       "Saturn"
     when 7
       "Uranus"
     when 8
       "Neptune"
     when 9
       "Pluto"
     else
       "Wrong planet number"
     end
