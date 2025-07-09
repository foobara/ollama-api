require "net/http"
require "uri"

require "foobara/all"
require "foobara/http_api_command"

require_relative "../../src/foobara/ai/ollama_api"

Foobara::Util.require_directory "#{__dir__}/../../src"

module Foobara
  module Ai
    module OllamaApi
      class << self
        def reset_all
          remove_instance_variable(:@default_llm_model) if instance_variable_defined?(:@default_llm_model)
        end
      end
    end
  end
end
