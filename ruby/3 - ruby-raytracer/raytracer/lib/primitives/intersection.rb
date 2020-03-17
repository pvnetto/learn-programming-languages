module Intersection

    def Intersection.get_first_hit(objects, ray, min_t, max_t)
        closest_so_far = max_t
        closest_hit = nil

        objects.each do |obj|
            current_hit = obj.hit(ray, min_t, max_t)
            if current_hit && current_hit.t < closest_so_far
                closest_hit = current_hit
                closest_so_far = current_hit.t
            end
        end

        return closest_hit
    end
end