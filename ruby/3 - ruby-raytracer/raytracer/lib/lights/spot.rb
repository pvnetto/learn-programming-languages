require './lib/lights/positional.rb'

class SpotLight < PositionalLight

    def initialize(intensity, look_at, position, cutoff_angle)
        super(intensity)
        @position = position
        @look_at = look_at
        @cutoff_angle = cutoff_angle
    end

    attr_reader :position, :look_at, :cutoff_angle

    def is_inside_cone(hit_record)
        light_to_obj = (hit_record.intersection_point - self.position).normalized
        light_to_obj_dot_dir = Vector3::dot(light_to_obj, self.look_at)

        cutoff_radians = self.cutoff_angle * Math::PI / 180
        cos_angle = Math.cos(cutoff_radians)
        return light_to_obj_dot_dir > cos_angle
    end

    def get_diffuse(hit_record)
        m = 64
        light_to_obj = (hit_record.intersection_point - position).normalized
        light_to_obj_dot_dir = Vector3::dot(light_to_obj, look_at)
        return [light_to_obj_dot_dir, 0].max ** m
    end

end