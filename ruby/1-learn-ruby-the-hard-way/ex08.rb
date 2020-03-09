# Formatters are defined as regular strings with template variables,
# defined between %{var_name}, instead of #{var_name} 
custom_formatter = "%{first} %{second} %{third} %{fourth}"

# The syntax to use a template string is <template> % <object>
# The object's parameter names must match the formatter variable names,
# and they can receive any kind of value
puts custom_formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts custom_formatter % {first: 'one', second: 'two', third: 'three', fourth: 'four'}
puts custom_formatter % {first: true, second: false, third: true, fourth: false}
puts custom_formatter % {
    first: custom_formatter,
    second: custom_formatter,
    third: custom_formatter,
    fourth: custom_formatter
}

puts custom_formatter % {
    first: "I had this thing.",
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}