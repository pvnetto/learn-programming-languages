filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)"
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0);


# Doesn't use chomp, because we also want to write the line break
puts "Now enter three lines to write on the file."
print "line 1: "
line1 = $stdin.gets
print "line 2: "
line2 = $stdin.gets
print "line 3: "
line3 = $stdin.gets

# file.write: The first write call writes over previous content, so there's no need to truncate
puts "I'm going to write these to the file."
target.write(line1)
target.write(line2)
target.write(line3)

puts "Closing the file"
target.close