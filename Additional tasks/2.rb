price=gets.chomp.to_i
discount=gets.chomp.to_i
amount=gets.chomp.to_i
result=0.0
(1..amount).each {
  result += price / 100 * discount
}
puts result.round