# frozen_string_literal: true

require "rspec/core/rake_task"
require "bundler/gem_tasks"
require "rubocop/rake_task"

task :default => ["rubocop", "spec:cov"]

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new

namespace :spec do
  RSpec::Core::RakeTask.new(:cov) do |task|
    task.rspec_opts = "--format Fivemat --format SpecCoverage"
  end
end
