$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_predictionio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_predictionio"
  s.version     = LayerPredictionio::VERSION
  s.authors     = ["Willian van der Velde"]
  s.email       = ["mail@willian.io"]
  s.homepage    = "willian.io"
  s.summary     = "Adds data to predictionio"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_dependency 'predictionio'

  s.add_development_dependency "pg"
end
