require "foobara/cached_command"

require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class ListLocalModels < BaseCommand
        include CachedCommand

        self.foobara_cache_expiry = 60 * 60

        result [Types::LocalModel]

        path "/tags"

        def build_result
          response_body["models"]
        end
      end
    end
  end
end
