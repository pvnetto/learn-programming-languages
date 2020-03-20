require './lib/types/vector3.rb'
require './lib/primitives/intersection.rb'

class Renderer

    def initialize(camera, objects, lights)
        @camera = camera
        @objects = objects
        @lights = lights
    end

    attr_reader :objects, :lights, :camera


    def trace()
        width, height, samples, file_name = [1920, 1080, 2, 'test_image']

        result = {
            file_name: file_name,
            width: width,
            height: height,
            data: []
        }

        (0...height).reverse_each do |j|
            (0...width).each do |i|
                pixel_color = Vector3::zero
                (0..samples).each do |k|
                    random_u = rand()
                    random_v = rand()

                    u = (i + random_u) / width
                    v = (j + random_v) / height

                    ray = camera.raycast(u, v)
                    pixel_color += get_color(ray, objects, lights)
                end

                pixel_color /= samples
                pixel_color *= 255.99
                pixel_color = Vector3::saturate(pixel_color)

                result[:data].push(pixel_color.to_s())
            end
        end
        
        result[:data] = result[:data].join("\n")

        return result
    end

    def get_color(ray, objects, lights)
        top_color = Vector3::colors[:blue]
        bottom_color = Vector3::colors[:white]

        hit = Intersection::get_first_hit(objects, ray, 0.01, 999999)

        if hit      # Returns object color
            return hit.hit_obj.get_color(ray, hit, lights, objects)
        else        # Returns background color
            unit_ray_dir = ray.direction.normalized
            t = 0.5 * (unit_ray_dir.y + 1.0)
            background_color = Vector3::lerp(bottom_color, top_color, t)
            return background_color
        end
    end
end