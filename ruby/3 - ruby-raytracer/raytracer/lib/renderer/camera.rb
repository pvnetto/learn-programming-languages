require './lib/types/ray.rb'
require './lib/types/vector3.rb'

class Camera

    def initialize(look_from, look_at, vec_up, fov, aspect_ratio)
        @origin = look_from

        theta = fov * Math::PI / 180.0
        half_height = Math.tan(theta / 2)
        half_width = aspect_ratio * half_height
        @lower_left_corner = Vector3.new(-half_width, -half_height, -1)

        w = (look_from - look_at).normalized
        u = Vector3::cross(vec_up, w).normalized
        v = Vector3::cross(w, u)

        u_half_width = u * half_width
        v_half_height = v * half_height

        @lower_left_corner = origin - u_half_width - v_half_height - w
        @horizontal = u_half_width * 2
        @vertical = v_half_height * 2
    end

    attr_reader :origin, :lower_left_corner, :horizontal, :vertical

    def raycast(u, v)
        u_horizontal = horizontal * u
        v_vertical = vertical * v

        ray_end = lower_left_corner + u_horizontal + v_vertical
        ray_dir = ray_end - origin

        return Ray.new(origin, ray_dir)
    end
end