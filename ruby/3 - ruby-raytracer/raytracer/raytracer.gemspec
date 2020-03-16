Gem::Specification.new do |spec|
    spec.name = 'raytracer'
    spec.version = '0.1.0'
    spec.authors = ['Paiva']
    spec.email = ['pvnetto1@gmail.com']
    spec.licenses = ['MIT']
    spec.summary = 'Yet another Raytracer project made with Ruby.'

    spec.files = ['lib/raytracer.rb']
    spec.executables = ['bin/raytracer']
    spec.test_files = ['tests/test_raytracer.rb']
    spec.require_paths = ['lib']
end