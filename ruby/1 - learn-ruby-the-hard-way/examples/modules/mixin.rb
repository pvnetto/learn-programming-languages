module Namer

    def call_myself
        puts "Calling class to_s from mixin: #{self.to_s}"
    end
end