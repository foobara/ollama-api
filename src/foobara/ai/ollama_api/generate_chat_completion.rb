require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class GenerateChatCompletion < BaseCommand
        inputs do
          model :model, :required
          messages [Message], :required
        end

        result ChatCompletion

        path "/chat"
        http_method :post

        def build_request_body
          self.request_body = inputs.merge(stream: false)
        end
      end
    end
  end
end
