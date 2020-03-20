class Hittable

    def get_color(ray, hit_record, lights, objects)
        return self.material.get_color(self, ray, hit_record, lights, objects)
    end

    def hit(ray, min_t, max_t)
        raise "Not yet implemented!"
    end
end