# frozen_string_literal: true

require 'image_transformations'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    expectations.on_potential_false_positives = :raise
    expectations.syntax = [:should, :expect]
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.expose_dsl_globally = true
  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = "documentation"
  else
    config.default_formatter = "Fivemat"
    config.profile_examples = 10
  end

  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end
