require "foobara/cached_command"

require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class ListRunningModels < BaseCommand
        include CachedCommand

        self.foobara_cache_expiry = 60 * 60

        result [Types::RunningModel]

        path "/ps"

        def build_result
          response_body["models"]
        end
      end
    end
  end
end
