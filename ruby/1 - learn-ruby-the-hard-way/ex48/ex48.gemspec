lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name       = "ex48"
    spec.version    = "1.0"
    spec.authors    = ["Paiva"]
    spec.email      = ["pvnetto1@gmail.com"]
    spec.summary    = %q{Short summary for the project.}
    spec.homepage   = "http://project-ex48.com/"
    spec.license    = "MIT"

    spec.files          = ["lib/ex48.rb"]
    spec.executables    = ["bin/ex48"]
    spec.test_files     = ["tests/test_ex48.rb"]
    spec.require_paths  = ["lib"]
end