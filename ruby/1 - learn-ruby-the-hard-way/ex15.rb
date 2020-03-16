# Gets filename from command line arguments
filename = ARGV.first

# open: Opens a file, returning a file object
# file.read: Returns a string with the file content
puts "Here's your file #{filename}"
txt = open(filename)
puts txt.read

# gets: Reads input from ARGV before user input
# $stdin.gets: Reads user input
print "Type the filename again: "
file_again = $stdin.gets.chomp
txt_again = open(file_again)
puts txt_again.read

# Closes files, to prevent unwanted usage
txt.close()
txt_again.close()