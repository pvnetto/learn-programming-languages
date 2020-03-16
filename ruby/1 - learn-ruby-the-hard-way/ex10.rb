tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

# Also a multiline string, instead it uses """<content>""" syntax
# OR alternatively '''<content>'''
# instead of %q { <content> }
fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

# Multiline strings can also be used as formatters
template_cat = """
%{name} is a very nice cat,
it weighs %{weight}
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts template_cat % {name: 'Griselda', weight: 6}