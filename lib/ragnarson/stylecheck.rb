module Ragnarson
  # style checking for booking sync projects
  module Stylecheck
    class << self
      def root
        Gem::Specification.find_by_name("ragnarson-stylecheck").gem_dir
      end
    end
  end
end

require "ragnarson/stylecheck/rubocop_helpers"
require "ragnarson/stylecheck/railtie" if defined?(Rails)
