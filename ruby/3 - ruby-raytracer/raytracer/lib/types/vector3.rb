class Vector3

    def initialize(x=0.0, y=0.0, z=0.0)
        @x = x
        @y = y
        @z = z
    end

    attr_reader :x, :y, :z, :one

    
    def magnitude
        return Math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
    end

    def normalized
        return Vector3.new(
            self.x / magnitude,
            self.y / magnitude,
            self.z / magnitude)
    end


    # Static methods/properties
    def Vector3.dot(vec_a, vec_b)
        return vec_a.x * vec_b.x + vec_a.y * vec_b.y + vec_a.z * vec_b.z
    end

    def Vector3.cross(vec_a, vec_b)
        return Vector3.new(
            vec_a.y * vec_b.z - vec_a.z * vec_b.y,
            -(vec_a.x * vec_b.z - vec_a.z * vec_b.x),
            vec_a.x * vec_b.y - vec_a.y * vec_b.x)
    end

    def Vector3.lerp(vec_a, vec_b, t)
        return vec_a * (1 - t) + (vec_b * t)
    end

    def Vector3.saturate(color)
        def self.sat(value)
            return [[value, 0.0].max, 255.0].min
        end

        return Vector3.new(
            sat(color.x),
            sat(color.y),
            sat(color.z))
    end

    def Vector3.one
        return Vector3.new(1, 1, 1)
    end

    def Vector3.zero
        return Vector3.new(0, 0, 0)
    end

    def Vector3.up
        return Vector3.new(0, 1, 0)
    end


    ## Operator overloading
    def +(obj)
        # This overload also defines the += operator.
        return Vector3.new(
            self.x + obj.x,
            self.y + obj.y,
            self.z + obj.z)
    end

    def -(obj)
        return Vector3.new(
            self.x - obj.x,
            self.y - obj.y,
            self.z - obj.z)
    end

    def *(obj)
        if obj.is_a?(Numeric)
            return Vector3.new(
                self.x * obj,
                self.y * obj,
                self.z * obj)
        else
            return Vector3.new(
                self.x * obj.x,
                self.y * obj.y,
                self.z * obj.z)
        end
    end

    def /(obj)
        if obj.is_a?(Numeric)
            return Vector3.new(
                self.x / obj,
                self.y / obj,
                self.z / obj)
        else
            return Vector3.new(
                self.x / obj.x,
                self.y / obj.y,
                self.z / obj.z)
        end
    end

    def [](idx)
        if idx == 0
            return self.x
        elsif idx == 1
            return self.y
        elsif idx == 2
            return self.z
        else
            raise 'Invalid index for Vector3.'
        end
    end

    # Object overriding
    def to_s()
        return "#{self.x.to_i} #{self.y.to_i} #{self.z.to_i}"
    end
end


def cross(vec_a, vec_b)
    return 'a'
end