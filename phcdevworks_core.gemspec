$:.push File.expand_path("lib", __dir__)
require "phcdevworks_core/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_core"
  spec.version     = PhcdevworksCore::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["developers@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "PHCDevworks - Engine - Core"
  spec.description = "Rails 6 core engine and helper files for PHCDevworks plugins."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #spec.metadata["allowed_push_host"] = "TODO: Set to "http://mygemserver.com""
  #else
  #raise "RubyGems 2.0 or newer is required to protect against " \
  #"public gem pushes."
  #end

  spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.0", ">= 6.0.3.2"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 1.10"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 1.10"

  # Development Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4"

end
