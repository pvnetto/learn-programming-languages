require './lib/renderer/camera.rb'
require './lib/renderer/renderer.rb'
require './lib/types/vector3.rb'
require './lib/types/ray.rb'
require './lib/writers/writers.rb'


start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

def make_camera()
    look_from = Vector3.new(9, 3.5, 15)
    look_at = Vector3.new(0, 0, -1)
    fov = 30
    aspect_ratio = 2.0 / 1.0 

    return Camera.new(look_from, look_at, Vector3::up, fov, aspect_ratio)
end


raytracer = Renderer.new(make_camera())

img_data = raytracer.trace()
trace_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Trace time: #{trace_time - start_time}"

Writers.PPM(img_data)
write_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
puts "Write time: #{write_time - trace_time}"

end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = end_time - start_time
puts "Total time: #{elapsed}"