require 'fileutils'

module Ragnarson
  module Stylecheck
    # helper to nicely update rubocop config
    module RubocopHelpers
      class << self
        def config
          File.join(Ragnarson::Stylecheck.root, 'config', 'rubocop.yml')
        end
      end
    end
  end
end
