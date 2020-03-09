# Defining a class in Ruby
class Song

    # initialize = constructor
    def initialize(lyrics)
        # @: Creates a variable to the object's scope. Variables initialized without
        # the @ symbol are available only in the local scope
        @lyrics = lyrics
    end

    def sing_me_a_song()
        @lyrics.each {|line| puts line}
    end

end

# A class is intantiated using this syntax:
# <var> = <class_name>.new()
happy_bday = Song.new([
    "Happy birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"])

bulls_on_parade = Song.new([
    "They rally around tha family",
    "With pockets full of shells"
])

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()