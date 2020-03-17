require './lib/primitives/hittable.rb'
require './lib/types/vector3.rb'
require './lib/primitives/hitrecord.rb'

class Sphere
    include Hittable

    def initialize(center, radius, material)
        @center = center
        @radius = radius
        @material = material
    end

    attr_reader :center, :radius, :material

    def hit(ray, min_t, max_t)
        center_to_origin = self.origin - self.center

        a = Vector3::dot(ray.get_direction, ray.get_direction)
        b = 2.0 * Vector3::dot(center_to_origin, ray.get_direction)
        c = Vector3::dot(center_to_origin, center_to_origin) - radius * radius
        delta = b * b - 4 * a * c

        solution_hit = nil
        if delta > 0
            solution_1 = (-b - Math.sqrt(delta)) / (2.0 * a)
            solution_hit = solve(ray, solution_1, max_t, min_t)
            
            if !solution_hit
                solution_2 = (-b + Math.sqrt(delta)) / (2.0 * a)
                solution_hit = solve(ray, solution_2, max_t, min_t)
            end
        end

        return solution_hit
    end


    def solve(ray, solution, max_t, min_t)
        if solution < max_t && solution > min_t
            t = solution
            intersection_point = ray.point_at(solution)
            normal = (intersection_point - center) / radius

            hit_record = HitRecord.new(t, intersection_point, normal, self)
            return hit_record
        end

        return nil
    end
end