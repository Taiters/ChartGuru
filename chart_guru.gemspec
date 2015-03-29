$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chart_guru/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chart_guru"
  s.version     = ChartGuru::VERSION
  s.authors     = ["Daniel Tait"]
  s.email       = ["dantait91@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ChartGuru."
  s.description = "TODO: Description of ChartGuru."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
