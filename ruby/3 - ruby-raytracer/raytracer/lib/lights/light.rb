class Light

    def initialize(intensity)
        @intensity = intensity
    end

    attr_reader :intensity

    def get_direction(hit_record)
        raise "Not yet implemented!"
    end

    def get_intensity(hit_record)
        return self.intensity
    end

    def get_diffuse(hit_record)
        dir_dot_normal = Vector3::dot(get_direction(hit_record).normalized, hit_record.normal)
        return [dir_dot_normal, 0].max
    end
end