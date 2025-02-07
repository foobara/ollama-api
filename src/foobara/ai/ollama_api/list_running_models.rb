require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class ListRunningModels < BaseCommand
        result [Model]

        path "ps"

        def build_result
          response_body["models"]
        end
      end
    end
  end
end
