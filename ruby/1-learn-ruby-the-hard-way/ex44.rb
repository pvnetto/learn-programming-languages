# Use the Component-pattern to delegate behavior instead
# of using inheritance. This allows you to make more modular code.
class Component

    def explicit()
        puts "COMPONENT explicit()"
    end
end


module ExampleMixin

    def implicit()
        puts "MIXIN explicit()"
    end

    def ExampleMixin.explicit()
        puts "MIXIN explicit()"
    end
end


class Parent
    include ExampleMixin

    def initialize(name)
        @name = name
    end

    def implicit()
        puts "PARENT implicit()"
    end

    def override()
        puts "PARENT override()"
    end

    def altered()
        puts "PARENT altered()"
    end
end


class Child < Parent

    # Overrides parent initialize
    def initialize(name)
        # Calls super, which in this context is equivalent to calling Parent's initialize method
        super(name)
        @last_name = 'Bro'
        @comp_instance = Component.new()
    end

    def explicit()
        puts "CHILD explicit()", "\n"
    end

    def override()
        puts "CHILD override()", "\n"
    end

    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()", "\n"
    end

    def call_component()
        @comp_instance.explicit()
    end

    def call_mixin()
        ExampleMixin.explicit()
    end

    def say_name()
        puts "#{@name} #{@last_name}", "\n"
    end
end


dad = Parent.new('Paiva')
son = Child.new('Paiva')

son.implicit()
son.explicit()
son.override()
son.altered()
son.call_component()
son.call_mixin()
son.say_name()