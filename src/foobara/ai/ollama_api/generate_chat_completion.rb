require_relative "base_post_command"

module Foobara
  module Ai
    module OllamaApi
      class GenerateChatCompletion < BasePostCommand
        inputs do
          model :string, :required # TODO: make a model type
          messages [Message], :required
        end

        result ChatCompletion

        path "chat"

        def build_request_body
          self.request_body = inputs.merge(stream: false)
        end
      end
    end
  end
end
