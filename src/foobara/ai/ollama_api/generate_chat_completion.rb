require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class GenerateChatCompletion < BaseCommand
        inputs do
          model :model, :required
          messages [Types::Message], :required
        end

        result Types::ChatCompletion

        path "/chat"
        http_method :post
        http_timeout 600

        def build_request_body
          self.request_body = inputs.merge(stream: false)
        end
      end
    end
  end
end
