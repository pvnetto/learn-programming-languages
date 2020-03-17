require './lib/lights/light.rb'

class DirectionalLight < Light

    def initialize(intensity, direction)
        super(intensity)
        @direction = direction
    end

    attr_reader :direction

    def get_direction(hit_record)
        return self.direction
    end
end