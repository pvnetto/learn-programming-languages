class PositionalLight < Light

    def initialize(intensity, position)
        super(intensity)
        @position = position
    end

    def get_direction(hit_record)
        return (self.position - hit_record.intersection_point).normalized
    end
end