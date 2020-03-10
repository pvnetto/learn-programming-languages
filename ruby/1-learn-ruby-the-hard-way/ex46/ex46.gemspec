# This works just like a package.json file, contains the information for a Ruby Gem.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name       = "ex46"
    spec.version    = "1.0"
    spec.authors    = ["Paiva"]
    spec.email      = ["pvnetto1@gmail.com"]
    spec.summary    = %q{Short summary of your project.}
    spec.homepage   = "http://project-homepage.com/"
    spec.license    = "MIT"

    spec.files          = ["lib/ex46.rb"]
    spec.executables    = ["bin/ex46"]
    spec.test_files     = ["tests/test_ex46.rb"]
    spec.require_paths  = ["lib"]
end
