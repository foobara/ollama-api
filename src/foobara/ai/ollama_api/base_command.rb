module Foobara
  module Ai
    module OllamaApi
      class BaseCommand < Foobara::Command
        include HttpApiCommand

        base_url { "#{ENV["OLLAMA_API_URL"] || "http://localhost:11434"}/api" }

        def build_request_headers
          self.request_headers = if api_token
                                   # simplecov:disable
                                   super.merge("x-api-Key" => api_token)
                                   # simplecov:enable
                                 else
                                   # simplecov:disable
                                   super
                                   # simplecov:enable
                                 end
        end

        def api_token
          key = ENV["OLLAMA_API_KEY"]

          if key
            key.empty? ? nil : key
          end
        end
      end
    end
  end
end
