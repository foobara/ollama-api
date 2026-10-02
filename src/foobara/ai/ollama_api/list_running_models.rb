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
          response_body["models"].map do |model_data|
            Types::RunningModel.new(model_data, ignore_unexpected_attributes: true)
          end
        end
      end
    end
  end
end
