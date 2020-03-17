require './lib/lights/positional.rb'

class PointLight < PositionalLight

    def initialize(intensity, position)
        super(intensity, position)
    end

    def get_intensity(hit_record)
        distance = get_direction(hit_record).magnitude
        return self.intensity / distance
    end

end