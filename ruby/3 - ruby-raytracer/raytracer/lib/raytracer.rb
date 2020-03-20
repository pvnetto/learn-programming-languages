require './lib/renderer/camera.rb'
require './lib/renderer/renderer.rb'
require './lib/types/vector3.rb'
require './lib/types/ray.rb'
require './lib/writers/writers.rb'

require './lib/lights/directional.rb'
require './lib/lights/point.rb'
require './lib/lights/spot.rb'

require './lib/materials/blinn_phong.rb'

require './lib/primitives/sphere.rb'

start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

def make_camera()
    look_from = Vector3.new(9.0, 3.5, 15.0)
    look_at = Vector3.new(0.0, 0.0, -1.0)
    fov = 30.0
    aspect_ratio = 16.0 / 9.0

    return Camera.new(look_from, look_at, Vector3::up, fov, aspect_ratio)
end

def make_objects()
    ambient_color = Vector3::colors[:blue] / 8.0;
    bp_mat_1 = BlinnPhongMaterial.new(
        ambient_color,
        Vector3.new(0.7, 0.2, 0.1),
        Vector3::colors[:white],
        256.0
    )
    
    bp_mat_2 = BlinnPhongMaterial.new(
        ambient_color,
        Vector3.new(0.8, 0.0, 0.8),
        Vector3::colors[:yellow] / 1.5,
        256.0
    )
    
    return [
        Sphere.new(Vector3.new(0, 0, -2), 0.5, bp_mat_2),
        Sphere.new(Vector3.new(0, -1000.5, -1), 1000, bp_mat_1)
    ]
end

def make_lights()
    return [
        DirectionalLight.new(Vector3::colors[:white] / 2.0,   Vector3.new(3.0, 2.0, 0.0)),
        PointLight.new(Vector3::colors[:red] / 1.2,         Vector3.new(0.0, 1.0, 0.0)),
        # SpotLight.new(Vector3.new(0.3, 0.9, 0.3),           Vector3.new(0, 0, -2), Vector3.new(0, 1, 2), 15),
        # SpotLight.new(Vector3.new(0.7, 0.2, 0.2),           Vector3.new(-4, 0, -2), Vector3.new(0, 4, -2), 18),
        # SpotLight.new(Vector3.new(0.7, 0.2, 0.2),           Vector3.new(4, 0, -2), Vector3.new(0, 4, 2), 18),
    ]
end


raytracer = Renderer.new(make_camera(), make_objects(), make_lights())

img_data = raytracer.trace()
trace_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Trace time: #{trace_time - start_time}"

Writers.PPM(img_data)
write_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Write time: #{write_time - trace_time}"

end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = end_time - start_time
puts "Total time: #{elapsed}"