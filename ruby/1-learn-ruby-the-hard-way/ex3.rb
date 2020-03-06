puts "I will now count my chickens:"

puts "Hens #{25.0 + 30.0 / 6.0}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

# Coercion from int to string
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

# Coercion from bool to string, so values are always converted to string
puts 3 + 2 < 5 - 7

puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is 5 greater than -2? #{5 > -2}"
puts "Is 5 greater than or equal to -2? #{5 >= -2}"
puts "Is 5 less than or equal to -2? #{5 <= -2}"