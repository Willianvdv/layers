$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_api"
  s.version     = LayerApi::VERSION
  s.authors     = ['Willian van der Velde']
  s.email       = ['mail@willian.io']
  s.homepage    = 'http://www.willian.io'
  s.summary     = 'Provides a api for layer'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"
  s.add_dependency 'rails-api'
  s.add_dependency 'active_model_serializers'

  s.add_development_dependency "pg"
end
