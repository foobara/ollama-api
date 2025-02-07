module Foobara
  module Ai
    module OllamaApi
      module Concerns
        module Url
          include Concern

          module ClassMethods
            def path(path)
              url { "#{ENV["OLLAMA_API_URL"] || "http://localhost:11434"}/api/#{path}" }
            end
          end
        end
      end
    end
  end
end
