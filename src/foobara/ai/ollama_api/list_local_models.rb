require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class ListLocalModels < BaseCommand
        result [LocalModel]

        path "tags"

        def build_result
          response_body["models"]
        end
      end
    end
  end
end
