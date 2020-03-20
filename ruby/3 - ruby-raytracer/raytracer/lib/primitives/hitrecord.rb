class HitRecord

    def initialize(t, intersection_point, normal, hit_obj)
        @t = t
        @intersection_point = intersection_point
        @normal = normal
        @hit_obj = hit_obj
    end

    attr_reader :t, :intersection_point, :normal, :hit_obj

end