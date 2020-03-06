# Functions in Ruby are written with the following syntax:
# def <func_name>(<args>)
#   ...
# end

def print_two(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
    puts "arg1: #{arg1}"
end

def print_none()
    puts "I got nothin'"
end

def print_many(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

# In Ruby, functions can be written using some unusual special characters
def function_with_mark?(arg1)
    puts('Inside this weird-ass function')
end



print_many("Zed", "Shaw")
print_two("Zed", "Shaw")
print_one("First")
print_none()
function_with_mark?()