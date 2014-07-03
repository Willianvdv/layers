$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "layer_pusher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "layer_pusher"
  s.version     = LayerPusher::VERSION
  s.authors     = ["Willian van der Velde"]
  s.email       = ["mail@willian.io"]
  s.homepage    = "http://www.willian.io"
  s.summary     = "Push data to pusher"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2"
  s.add_dependency 'pusher'

  s.add_development_dependency 'pg'
end
