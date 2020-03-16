require './lib/types/vector3.rb'

class Renderer

    def initialize(camera)
        @objects = []
        @lights = []
        @camera = camera
    end

    attr_reader :objects, :lights, :camera


    def trace()
        width, height, samples, file_name = [300, 300, 2, 'test_image']

        result = {
            file_name: file_name,
            width: width,
            height: height,
            data: ''
        }

        (0..height).each do |i|
            (0..width).each do |j|
                pixel_color = Vector3.new()
                (0..samples).each do |k|
                    random_u = rand()
                    random_v = rand()

                    u = (j + random_u) / width
                    v = (i + random_v) / height

                    ray = camera.raycast(u, v)
                    current_color = get_color(ray, objects, lights)
                    pixel_color += current_color
                end

                pixel_color /= samples
                pixel_color *= 255.99
                pixel_color = Vector3::saturate(pixel_color)

                result[:data] += pixel_color.to_s() + "\n"
            end
        end

        return result
    end


    def get_color(ray, objects, lights)
        bottom_color = Vector3::one
        top_color = Vector3.new(0.5, 0.7, 1.0)
        color_result = Vector3.new(1, 0, 1)

        # TODO: Finish hit

        return color_result
    end
end