module Foobara
  module Ai
    module OllamaApi
      class LocalModel < OllamaApi::Model
        attributes do
          modified_at :datetime, :required
        end
      end
    end
  end
end
