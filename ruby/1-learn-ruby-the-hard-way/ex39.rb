states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan': 'MI'
}

# Alternative syntax. Available only when all keys are symbols.
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

# Alternative syntax. Available only when all keys are symbols
# Using Symbols in hashes is better, because they're immutable,
# look better and are ABOUT 1.7X FASTER THAN STRING KEYS!
# cities = {
#     'CA': 'San Francisco',
#     'MI': 'Detroit',
#     'FL': 'Jacksonville'
# }

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"


puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"


puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"


# Object enumerator returns (key, value) pairs
puts '-' * 10
states.each do |state, abbrev|
    puts "#{state} is abbreviated as #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
    puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end


puts '-' * 10
state = states['Texas']

# Values are coerced to booleans on conditional checks
if !state
    puts "Sorry, Texas is not included..."
end

city = cities['TX']         # Undeclared keys return nil
city ||= 'Does Not Exist'   # This operator is equivalent to JS: <my_var> = <val> || <default_val>
puts "The city for the state 'TX' is: #{city}"