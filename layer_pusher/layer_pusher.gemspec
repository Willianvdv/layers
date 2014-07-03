$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_pusher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_pusher"
  s.version     = LayerPusher::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LayerPusher."
  s.description = "TODO: Description of LayerPusher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"

  s.add_development_dependency "pg"
end
