input_file = ARGV.first

# Defines a function that prints a file's entire text content
def print_all(f)
    puts(f.read)
end

# file.seek(0): Returns to start of file
def rewind(f)
    f.seek(0)
end

# f.gets: Reads a line from the file
def print_a_line(line_count, f)
    puts("#{line_count}. #{f.gets.chomp}")
end

current_file = open(input_file)

puts("First, let's print the whole file: \n")
print_all(current_file)

puts("Now, let's rewind, kind of like a tape.")
rewind(current_file)

# Ruby doesn't have increment operator x++, so incrementing is done with x += 1
puts("Let's print three lines:")
current_line = 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)

