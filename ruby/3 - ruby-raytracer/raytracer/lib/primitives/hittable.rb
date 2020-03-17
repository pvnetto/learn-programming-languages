module Hittable

    def Hittable.get_color(ray, hit_record, lights, objects)
        return self.material.get_color(this, ray, hit_record, lights, objects)
    end

    def Hittable.hit(ray, min_t, max_t)
        raise "Not yet implemented!"
    end
end