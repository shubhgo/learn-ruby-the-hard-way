# run by typing ruby ex13_arg.rb first 2nd 3rd
first, second, third = ARGV # ARGV in capital because its a constant

puts "this script is called: #{$0}"
puts "First variable: #{first}"
puts "Second: #{second} and third: #{third}"