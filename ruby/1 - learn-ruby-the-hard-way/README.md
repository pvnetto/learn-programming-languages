# Ruby
Ruby is an object oriented scripting language. It's mainly used for web development along with Ruby On Rails.


## Conventions
- Supports **semicolon**, but it's **not a good practice**
- Variable/function names with snake_case
- Class names with PascalCase
- Blocks start with a keyword and end with the `end` keyword.
    - This means conditionals, loops, functions, classes, modules etc are all defined this way
    - Identation is optional but highly recommended 


## Project Setup/Directories
This is the recommended directory setup for Ruby GEM projects. Refer to [rubygems](https://guides.rubygems.org/make-your-own-gem/) for more info. NAME = Name of your project.

    .
    ├── bin                         # Executable files, must be .rb
    │   └── NAME
    ├── lib                         # GEM source code
    │   └── NAME.rb
    ├── test                        # Automated tests files.
    │   └── test_NAME.rb            # Every test file should be named test_file-to-test.rb
    ├── Rakefile                    # Configuration file for Rake, the default test runner for Ruby.
    ├── NAME.gemspec                # Configuration file for Ruby gems. Refer to rubygems for more info.
    └── README.md


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

### Types

#### numbers
Stores integers

- Declaration:
```ruby
x = 100     # Integer
```


#### floats
Stores floating-point numbers

- Declaration:
```ruby
x = 3.1415   # Float
```


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


#### null
The null value for Ruby is the reserved keyword `nil`.
- my_var = nil


#### symbols
Symbols are a Ruby-exclusive type of data. They're used to **declare identifiers**, which look a lot like strings, except they're immutable and unique, that is, when using a symbol or assigning a variable to it, it's guaranteed that the same value is being referenced, as opposed to strings, that will force Ruby to create new instances and hence allocate more memory.

- Declaration: :<symbol_name>
- Methods/Properties:
    - **:symbol.object_id**: Returns the symbol's id. Always the same for equal symbols.
    - **:symbol.to_s**: Converts a symbol to string. The opposite is also possible with to_sym.


Symbols can be used as: 
- Hash keys, with much better performance and readability when compared to string keys.
- Alias for variables, functions, classes etc




### Data Types

#### Arrays
Stores a list of value
- Declaration:
    - my_arr = []
    - my_arr = Array.new


#### Hashes
Stores key-value pairs, just like JS and Python objects.
- Declaration:
    my_obj = {
        '<key_1_name>' => <value>,
        '<key_2_name>' => <value>
    }



## Structures

### Conditionals

Ruby uses `if`, `elsif` and `else` for conditional clauses, which is very similar to Python. Consecutive uses of `if` with `elsif/else` count as a single block, so you only have to use `end` once per conditional block. This syntax can be described as:
```
<if> condition
    ...
<elsif/else>
    ...
end
```

### Loops

#### Different parts
- next(): Calls the next item when inside an enumerator loop

### Functions
Functions are defined using the following syntax:

```
def <func_name>(<args>)
    ...
end
```

### Classes

Classes in Ruby are declared using the follow syntax:

```
<class_name>
    def initialize()
        @<property_name> = <value>
    end
end
```

- class.new(): Creates an instance of the class
    ```ruby
    my_var = MyClass.new()
    ```

- initialize: Constructor for Ruby classes.
    ```ruby
    def initialize()
        ...
    end
    ```

- @: Prefixing a variable with @ scopes the variable to the class, making it accessible to all of its methods.
    ```ruby
    @my_var = 30
    ```

- @@: Prefixing a variable with @@ makes it static, so its value is shared between all instances of the class.
    ```ruby
    @@my_static_var = 'This value is shared.'
    ```

- attr_reader: Generates a getter for a class property
    ```ruby
    attr_reader :my_var     # Creates a getter for @my_var
    ```

- attr_writer: Generates a setter for a class property
    ```ruby
    attr_writer :my_var     # Creates a setter for @my_var
    
    ####
    ####

    my_instance.my_var = 'new val'
    ```




### Modules
**Search for :: operator, read ruby docs on modules**

## File I/O
File I/O is usually initialized with `open(path)`, which returns a `File` object from the specified path.
File objects can be manipulated through their methods, which are very similar to Python's methods for file I/O.
Some of these methods are:

- **file.read**: Returns file content as a string.
- **file.gets**: Reads input from the file, until it reaches a \n character.
- **file.readline**: Reads a line from the file
- **file.truncate**: Empties the file
- **file.write(content)**: Writes content to the file
- **file.seek(0)**: Moves read/write location to start of file
- **file.close**: Closes the file object, disabling I/O

To write to a file, do `open(path, 'w')`. This will open a file in write mode, so reading is disabled and writing
is enabled.


## Methods


## Command line arguments
Arguments from command line can be accessed through the ARGV object, which can be destructured into several variables

```ruby
first_val, second_val = ARGV
```


## Syntatic sugar

### General
- begin, end keywords can be used to define a separate block. This is commonly used for
declaring exceptions.

### Functions
- Functions with no parameters can be called as properties
    - EX: gets
- Functions with only 1 parameter can be called without ()
    - EX: puts "Hello"
- Aliasing is possible using the `alias` keyword. Works just like C++ typedef
    - alias <target_func> <new_name>

### Lists
- Destructuring lists:
    - first_val, second_val = [1, 2, 3]  # the number of variables doesn't have to match length
- list.first/last: Properties to access first/last elements of a list


### Conditionals
- &&, ||, ! can be written as and, or, not.


## Weird parts
- Functions can have some unusual characters in their names, like '?'
    - EX: File.exists? is a valid function name...weird, I know


## References
- https://ruby-doc.com/docs/
- http://ruby-for-beginners.rubymonstas.org/advanced/
