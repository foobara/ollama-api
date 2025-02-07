require_relative "model"

module Foobara
  module Ai
    module OllamaApi
      class RunningModel < OllamaApi::Model
        attributes do
          expires_at :datetime, :required
          size_vram :integer, :required
        end
      end
    end
  end
end
