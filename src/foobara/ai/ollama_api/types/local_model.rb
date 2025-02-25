require_relative "model"

module Foobara
  module Ai
    module OllamaApi
      module Types
        class LocalModel < Model
          attributes do
            modified_at :datetime, :required
          end
        end
      end
    end
  end
end
