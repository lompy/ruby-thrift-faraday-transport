require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

# rubocop:disable Style/HashSyntax

task :default => %i[rubocop spec]

# rubocop:enable Style/HashSyntax
