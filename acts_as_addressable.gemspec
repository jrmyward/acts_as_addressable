$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_addressable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_addressable"
  s.version     = ActsAsAddressable::VERSION
  s.authors     = ["Jeremy Ward"]
  s.email       = ["jeremy.ward@digital-ocd.com"]
  s.homepage    = "https://github.com/jrmyward/acts_as_addressable"
  s.summary     = "A simple engine to add addressable features to a domain object."
  s.description = "A simple engine to add addressable features to a domain object."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-rails', '>= 3.0.0.beta'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'thor'

end
