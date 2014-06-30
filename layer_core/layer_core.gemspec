$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_core"
  s.version     = LayerCore::VERSION
  s.authors     = ['Willian van der Velde']
  s.email       = ['mail@willian.io']
  s.summary     = "Core of Layer"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "pg"
end
