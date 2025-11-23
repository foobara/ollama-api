module Foobara
  module Ai
    module OllamaApi
      class BaseCommand < Foobara::Command
        include HttpApiCommand

        base_url { "#{ENV["OLLAMA_API_URL"] || "http://localhost:11434"}/api" }

        def build_request_headers
          self.request_headers = if api_token
                                   super.merge("x-api-Key" => api_token)
                                 else
                                   super
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
