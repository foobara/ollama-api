module Foobara
  module Ai
    module OllamaApi
      class BaseCommand < Foobara::Command
        include HttpApiCommand

        base_url { "#{ENV["OLLAMA_API_URL"] || "http://localhost:11434"}/api" }
      end
    end
  end
end
