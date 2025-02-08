require_relative "base_get_command"

module Foobara
  module Ai
    module OllamaApi
      class ListRunningModels < BaseGetCommand
        result [RunningModel]

        path "ps"

        def build_result
          response_body["models"]
        end
      end
    end
  end
end
