require './lib/primitives/hittable.rb'
require './lib/types/vector3.rb'
require './lib/primitives/hitrecord.rb'

class Sphere < Hittable

    def initialize(center, radius, material)
        @center = center
        @radius = radius
        @material = material
    end

    attr_reader :center, :radius, :material

    def hit(ray, min_t, max_t)
        center_to_origin = ray.origin - self.center

        a = Vector3::dot(ray.direction, ray.direction)
        b = 2.0 * Vector3::dot(center_to_origin, ray.direction)
        c = Vector3::dot(center_to_origin, center_to_origin) - radius * radius
        delta = b ** 2 - 4 * a * c

        solution_hit = nil
        if delta > 0
            sqrt_delta = Math.sqrt(delta);
            solution_1 = (-b - sqrt_delta) / (2.0 * a)
            solution_hit = solve(ray, solution_1, max_t, min_t)
            
            if solution_hit
                return solution_hit
            else
                solution_2 = (-b + sqrt_delta) / (2.0 * a)
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

            return HitRecord.new(t, intersection_point, normal, self)
        end

        return nil
    end
end