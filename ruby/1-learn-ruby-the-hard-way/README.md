# Ruby
Ruby is an object oriented scripting language. It's mainly used for web development along with Ruby On Rails.


## Conventions
- No semicolon
- Variable/function names with snake_case
- Class names with PascalCase


## I/O
- puts(val): Prints to the console and skips a line
- print(val): Prints to the console but doesn't skip a line
- gets: Gets input from either a file or user
- $stdin.gets: Gets input from user


## Variables
Variables in Ruby must always be initialized with a value.

```
<var_name> = <value>
```


## Types


#### numbers
Integers or floats
- x = 1     # Integer
- x = 1.0   # Float

#### strings
- Declaration: "content" or 'content'
- Multiline: """content""", '''content''' or %q{content}
- Templates: "#{}"
- Formatters:
    - Declaration: x = "%{var_name}"
    - Usage: x % {var_name: value}
- Methods:
    - str.chomp: Removes carriage return characters from end of string, like \r, \n
    - str.to_i/f: Converts string to integer/float


## Functions
Functions are defined using the following syntax:

```
def <func_name>(<args>)
    ...
end
```

## Classes


## File I/O
File I/O is usually initialized with `open(path)`, which returns a `File` object from the specified path.
File objects can be manipulated through their methods, which are very similar to Python's methods for file I/O.
Some of these methods are:

- file.read: Returns file content as a string.
- file.gets: Reads input from the file, until it reaches a \n character.
- file.readline: Reads a line from the file
- file.truncate: Empties the file
- file.write(content): Writes content to the file
- file.seek(0): Moves read/write location to start of file
- file.close: Closes the file object, disabling I/O

To write to a file, do `open(path, 'w')`. This will open a file in write mode, so reading is disabled and writing
is enabled.


## Methods


## Command line arguments
Arguments from command line can be accessed through the ARGV object, which can be destructured into several variables

```ruby
first_val, second_val = ARGV
```


## Syntatic sugar
- Functions with no parameters can be called as properties
    - EX: gets
- Functions with only 1 parameter can be called without ()
    - EX: puts "Hello"
- Destructuring lists:
    - first_val, second_val = [1, 2, 3]  # the number of variables doesn't have to match length
- list.first/last: Properties to access first/last elements of a list


## Weird parts
- Functions can have some unusual characters in their names, like '?'
    - EX: File.exists? is a valid function name...weird, I know