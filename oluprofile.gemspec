$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "oluprofile/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "oluprofile"
  s.version     = Oluprofile::VERSION
  s.authors     = ["Kevin Custer"]
  s.email       = ["kecuster@gmail.com"]
  s.homepage    = "http://www.oluprofile.com"
  s.summary     = "Summary of Oluprofile."
  s.description = "Description of Oluprofile."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Rails Core Dependencies
  s.add_dependency "rails", "~> 5.2.0"

  # UI and other dependencies
  s.add_dependency "sorcery", "~> 0.12.0"

  # Add development dependencies
  s.add_development_dependency "rspec-rails", "~> 3.8.0"
  s.add_development_dependency "factory_bot"
  s.add_development_dependency "better_errors"
  s.add_development_dependency "binding_of_caller"
  s.add_development_dependency "puma"

end
