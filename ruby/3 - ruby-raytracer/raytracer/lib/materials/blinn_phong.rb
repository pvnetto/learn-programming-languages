require "./lib/materials/material.rb"
require "./lib/types/vector3.rb"
require "./lib/types/ray.rb"
require "./lib/primitives/intersection.rb"


class BlinnPhongMaterial < Material

    def initialize(ambient_color, diffuse_color, specular, shininess)
        @ambient_color = ambient_color
        @diffuse_color = diffuse_color
        @specular = specular
        @shininess = shininess
    end

    attr_reader :ambient_color, :diffuse_color, :specular, :shininess

    def get_color(hit_obj, ray, hit_record, lights, objects)
        final_color = ambient_color

        diffuse_contribution = 0.0
        specular_contribution = 0.0
        intensity = Vector3::zero

        view_dir = (ray.origin - hit_record.intersection_point).normalized

        lights.each do |light|
            light_dir = light.get_direction(hit_record).normalized
            inverted_ray = Ray.new(hit_record.intersection_point, light_dir)
            shadow_hit = Intersection::get_first_hit(objects, inverted_ray, 0.0001, 999999)

            if shadow_hit && shadow_hit.hit_obj != hit_obj
                next
            else
                diffuse_contribution = light.get_diffuse(hit_record)
                intensity = light.get_intensity(hit_record)
                final_color += (diffuse_color * diffuse_contribution * intensity)
    
                if diffuse_contribution > 0.0
                    half_dir = (light_dir + view_dir).normalized
                    spec_angle = light.get_diffuse(hit_record)
                    specular_contribution = spec_angle ** shininess
                    final_color += (specular * specular_contribution * intensity)
                end
            end
        end

        return final_color
    end
end