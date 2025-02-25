module Foobara
  module Ai
    module OllamaApi
      module Types
        class Message < Foobara::Model
          attributes do
            content :string, :required
            role :string, :required # TODO: make a role type
            images [:string] # TODO: make a base 64 image type
            tool_calls :duck # TODO: make a tool calls type
          end
        end
      end
    end
  end
end
