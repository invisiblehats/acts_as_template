$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "act_as_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "act_as_template"
  spec.version     = ActAsTemplate::VERSION
  spec.authors     = ["Myk Klemme"]
  spec.email       = ["mykklemme@gmail.com"]
  spec.homepage    = "https://github.com/invisiblehats/act_as_template"
  spec.summary     = "Summary of ActAsTemplate."
  spec.description = "Description of ActAsTemplate."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir[
    "{app,config,db,lib}/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md"
  ]

  spec.add_dependency "rails", "~> 6.0.0"

  spec.add_development_dependency "invisible_standards"
end
