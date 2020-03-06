# Imports an external module, with syntax similar to a static class
require "./ex25_module.rb"

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
print words
puts

sorted_words = Ex25.sort_words(words)
print sorted_words
puts

Ex25.print_first_word(words)
Ex25.print_last_word(words)
print words
puts

Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)
print sorted_words
puts

sorted_words = Ex25.sort_sentence(sentence)
print sorted_words
puts

Ex25.print_first_and_last(sentence)
Ex25.print_first_and_last_sorted(sentence)