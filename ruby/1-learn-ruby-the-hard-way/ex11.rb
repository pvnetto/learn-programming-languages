 # chomp is a string method that by default removes \n, \r and \rn from the end of a string
print "How old are you? "
 # When used with gets, chomp removes the \n generated when pressing 'return'
age = gets.chomp

print "How tall are you? "
height = gets.chomp

print "How much do you weigh? "
weight = gets.chomp

# You can also pass an argument to 'chomp', so that it removes the specified string
# instead of removing carriage return characters
puts "Hello there".chomp("there")

puts "So you're #{age} old, #{height} tall and #{weight} heavy"