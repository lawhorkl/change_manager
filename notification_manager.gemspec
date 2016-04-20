$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "notification_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "notification_manager"
  s.version     = NotificationManager::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of NotificationManager."
  s.description = "TODO: Description of NotificationManager."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.13"

  s.add_development_dependency "sqlite3"
#testing frameworks  
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'

end
