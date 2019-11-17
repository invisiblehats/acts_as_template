# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'acts_as_template/project_meta'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = ActsAsTemplate::NAME
  spec.version = ActsAsTemplate::VERSION
  spec.authors = ActsAsTemplate::AUTHORS
  spec.email = ActsAsTemplate::EMAIL
  spec.homepage = ActsAsTemplate::HOMEPAGE
  spec.summary = ActsAsTemplate::SUMMARY
  spec.description = ActsAsTemplate::DESCRIPTION
  spec.license = ActsAsTemplate::LICENSE

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'ihv-rubocop.yml',
    'README.md'
  ]

  spec.add_dependency 'rails', '>= 4.2'

  spec.add_development_dependency 'invisible_standards'
  spec.add_development_dependency 'rspec', '>= 3'
  spec.add_development_dependency 'rubocop', '>= 0.70'
  spec.add_development_dependency 'rspec_junit_formatter', '>= 0'
end
