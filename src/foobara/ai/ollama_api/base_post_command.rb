require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class BasePostCommand < BaseCommand
        include HttpApiPostCommand
      end
    end
  end
end
