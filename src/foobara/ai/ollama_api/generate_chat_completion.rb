require_relative "base_command"

module Foobara
  module Ai
    module OllamaApi
      class GenerateChatCompletion < BaseCommand
        inputs do
          model :model_enum, :required
          messages [Types::Message], :required
          options do
            temperature :float
          end
        end

        result Types::ChatCompletion

        path "/chat"
        http_method :post
        http_timeout 600

        def build_request_body
          inputs = {
            model:,
            messages:,
            stream: false
          }

          if options && !options.empty?
            inputs[:options] = options
          end

          self.request_body = inputs.merge(stream: false)
        end

        def build_result
          Types::ChatCompletion.new(response_body, ignore_unexpected_attributes: true)
        end
      end
    end
  end
end
