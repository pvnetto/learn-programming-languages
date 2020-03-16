# This works just like a package.json file, contains the information for a Ruby Gem.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

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