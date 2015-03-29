$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "graph_guru/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "graph_guru"
  s.version     = GraphGuru::VERSION
  s.authors     = ["Daniel Tait"]
  s.email       = ["dantait91@gmail.com"]
  s.homepage    = "https://github.com/Taiters/graph_guru"
  s.summary     = "A rails engine which provides graph helpers"
  s.description = "GraphGuru is a rails engine which adds js files and helpers for rendering graphs. (This is not really ready to be used, just something I'm working on for now)"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
