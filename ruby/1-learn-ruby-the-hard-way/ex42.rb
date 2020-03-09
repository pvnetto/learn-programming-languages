class Animal
end

# Extend syntax:
# class <class_name> < <base_name>
# end
class Dog < Animal

    def initialize(name)
        @name = name
    end

end


class Cat < Animal

    def initialize(name)
        @name = name
    end

end


class Person

    def initialize(name)
        @name = name
        @pet = nil
    end

    attr_accessor :pet
end


class Employee < Person

    def initialize(name, salary)
        # super class refers to the parent class
        super(name)
        @salary = salary
    end

end


class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end


rover = Dog.new("Rover")
satan = Cat.new("Satan")

mary = Person.new("Mary")
mary.pet = satan

frank = Person.new("Frank")
frank.pet = rover

flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()
