require './mod.rb'
require './mixin.rb'

# Variables inside modules must be accessed using the <module>::<var> syntax
puts ExampleModule::PI

# Methods can be accessed using dot notation or ::
puts ExampleModule.sin(4)
puts ExampleModule::sin(2)


class Phonograph
    include Namer

    def initialize(name)
        @name = name
    end
end


class EightTrack
    include Namer

    def initialize(name)
        @name = name
    end
end


ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

ph.call_myself()
et.call_myself()