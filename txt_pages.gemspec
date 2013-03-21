$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "txt_pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "txt_pages"
  s.version     = TxtPages::VERSION
  s.authors     = ["Pablo Marti"]
  s.email       = ["pablo.marti89@gmail.com"]
  s.homepage    = "https://github.com/pablomarti/txt_pages"
  s.summary     = "Manage static text pages with a single resource."
  s.description = "Mountable engine that generates a resource for managing text pages in your website using permalinks."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
