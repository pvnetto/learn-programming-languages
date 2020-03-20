class Ray

    def initialize(origin, direction)
        @origin = origin
        @direction = direction
    end

    attr_reader :origin, :direction

    def point_at(t)
        return origin + (direction * t)
    end

    def to_s()
        puts "Origin: #{self.origin}, Direction: #{self.direction}"
    end
end