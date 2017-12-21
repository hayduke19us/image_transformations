# frozen_string_literal: true

require "image_transformations/version"

module ImageTransformations
  class Option
    attr_reader :version

    def initialize(version)
      @version = version
    end

    def default_transformations
      {
        effect: 'improve',
        flags:  'lossy.immutable_cache',
        crop: 'scale'
      }
    end

    def default
      default_transformations.tap do |defaults|
        # If a newer version exist, return it bypassing the cached version.
        defaults[:version] = version
        defaults[:width]   = 460
      end
    end

    def thumb
      default.tap do |defaults|
        defaults[:width]  = 64
        defaults[:height] = 64
      end
    end

    def large
      default.tap { |defaults| defaults[:width] = 940 }
    end
  end
end
