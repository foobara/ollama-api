require_relative "model"

module Foobara
  module Ai
    module OllamaApi
      module Types
        class RunningModel < Model
          attributes do
            expires_at :datetime, :required
            size_vram :integer, :required
          end
        end
      end
    end
  end
end
