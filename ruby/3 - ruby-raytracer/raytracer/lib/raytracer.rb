require './lib/renderer/camera.rb'
require './lib/renderer/renderer.rb'
require './lib/types/vector3.rb'
require './lib/types/ray.rb'

def make_camera()
    look_from = Vector3.new(9, 3.5, 15)
    look_at = Vector3.new(0, 0, -1)
    fov = 30
    aspect_ratio = 2.0 / 1.0 

    return Camera.new(look_from, look_at, Vector3::up, fov, aspect_ratio)
end

def getRender()
    raytracer = Renderer.new(make_camera())
    img_data = raytracer.trace()
    return img_data
end

vec_a = Vector3.new(0, 10, 0)
vec_b = Vector3.new(30, 40, 60)

ray_a = Ray.new(
    Vector3.new(0, 0, -10),
    Vector3.new(0, 2, 3))

puts vec_a * vec_b
puts ray_a.point_at(100)
puts Vector3::cross(vec_a, vec_b)

print getRender()