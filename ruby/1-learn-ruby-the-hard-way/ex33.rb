def loop_through_count(count)
    i = 0
    numbers = []

    # While loops in Ruby work exactly the same as any other language
    while i < count
        puts "At the top, is is #{i}"
        
        numbers.push(i)
        i += 1

        puts "At the bottom is is #{i}"
    end

    return numbers
end

def loop_with_generator(count)
    numbers = []    
    # While loops in Ruby work exactly the same as any other language
    (0..count).each do |i|
        puts "At the top, is is #{i}"
        numbers.push(i)
        puts "At the bottom is is #{i}"
    end

    return numbers
end

numbers = loop_through_count(20)
puts "The numbers: "
numbers.each { |num| puts num }

generated = loop_with_generator(10)
puts "Generated nums: "
generated.each { |num| puts num }