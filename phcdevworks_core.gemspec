require_relative "lib/phcdevworks_core/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_core"
  spec.version     = PhcdevworksCore::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "PHCDevworks - Engine - Core"
  spec.description = "Rails 6 core engine and helper files for PHCDevworks plugins."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/phcdevworks/phcdevworks_core"
  spec.metadata["changelog_uri"] = "https://github.com/phcdevworks/phcdevworks_core/releases"

  spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.1"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 4.0"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 4.0"

  # Development Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4"

end
