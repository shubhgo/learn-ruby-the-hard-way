def prompt
  print ">"
end

puts "Door 1 or 2?"
prompt; door = gets.chomp()

if door == "1"
  puts "option 1 selected"
elsif door == "2"
  puts "option 2 selected"
else
  puts "paaa... wrong option!"
end
