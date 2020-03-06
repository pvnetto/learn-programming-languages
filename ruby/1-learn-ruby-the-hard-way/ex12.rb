puts "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}"


print "Give me some money: "
money_ammount = gets.chomp.to_f

puts "Here's some money back: #{money_ammount * 0.1}"