require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class BaseGetCommand < BaseCommand
        include HttpApiGetCommand
      end
    end
  end
end
