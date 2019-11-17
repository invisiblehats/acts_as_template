# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActsAsTemplate'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'bundler/gem_tasks'

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

# require 'rails'
# require "acts_as_template"
require 'github_changelog_generator/task'

namespace :acts_as_template do
  namespace :changelog do
    desc 'Create a new changelog based on the current version'
    GitHubChangelogGenerator::RakeTask.new :generate do |config|
      user, project = ActsAsTemplate::REPO.split('/')

      config.user = user
      config.project = project
      config.future_release = "v#{ActsAsTemplate::VERSION}"
      config.token = ENV['CHANGELOG_TOKEN'] || ENV['GITHUB_TOKEN']
    end
  end
end

task default: :test
