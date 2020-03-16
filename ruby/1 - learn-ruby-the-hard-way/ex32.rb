the_count = [-1, 0, 1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Traditional foreach-loop. Even though this is familiar, Ruby developers don't use it
for number in the_count
    puts "This is count #{number}"
end


# Ruby's way of looping, also the most popular. Uses the following syntax:
# <enumerator>.each do |<el_name>|
#   ...
# emd
the_count.each do |number|
    puts "This is count #{number}"
end

fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end


# Same loop as before, but with different syntax:
# <enumerator>.each <block> |<el_name>| </block>
# Any kind of logic can be added to the block, just like the previous loop,
# but this form is prefered for smaller stuff
change.each { |i| puts "I got #{i}" }

# Declares an array
elements = []

# (min..max): Works just like Python's range function
# ..: Inclusive range
# ...: Exclusive range
(0..5).each do |i|
    puts "adding #{i} to the list"
    elements.push(i)
end

elements.each { |i| puts "Element was: #{i}" }