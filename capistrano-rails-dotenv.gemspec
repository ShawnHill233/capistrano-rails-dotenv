
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "capistrano/rails/dotenv/version"

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rails-dotenv"
  spec.version       = Capistrano::Rails::Dotenv::VERSION
  spec.authors       = ["ShawnH"]
  spec.email         = ["a361162743@hotmail.com"]

  spec.summary       = %q{Upload env file to remote server with Capistrano 3.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/ShawnHill233/capistrano-rails-dotenv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency 'capistrano', '~> 3.0'
end
