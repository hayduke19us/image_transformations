# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_transformations/version'

Gem::Specification.new do |spec|
  spec.name          = "image_transformations"
  spec.version       = ImageTransformations::VERSION
  spec.authors       = ["getaroom"]
  spec.email         = ["devteam@roomvaluesteam.com"]

  spec.summary       = %q{Image transformation options}
  spec.description   = %q{A place to share image transformation code across multiple applications}
  spec.homepage      = "https://github.com/getaroom/image_transformations"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "NULL"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.6"
  spec.add_development_dependency "fivemat"
  spec.add_development_dependency "rubocop", "~> 0.49.0"
  spec.add_development_dependency "shoulda-matchers", "< 3.0" # 3.0 requires active support 4.0+
end
