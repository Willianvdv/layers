$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_predictionio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_predictionio"
  s.version     = LayerPredictionio::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LayerPredictionio."
  s.description = "TODO: Description of LayerPredictionio."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_dependency 'predictionio'

  s.add_development_dependency "pg"
end
