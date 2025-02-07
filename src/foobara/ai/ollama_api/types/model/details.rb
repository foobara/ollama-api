module Foobara
  module Ai
    module OllamaApi
      class Model < Foobara::Model
        class Details < Foobara::Model
          attributes do
            parent_model :string, :required # TODO: should this be real model names?
            format :string, :required # TODO: what are the valid values for this?
            family :string, :required # TODO: what are the valid values for this?
            families [:string], :required # TODO: what are the valid values for this?
            parameter_size :string, :required # TODO: should we have a type to encapsulate 7.2B? Can just be a decimal?
            quantization_level :string, :required # TODO: what are the valid values for this?
          end
        end
      end
    end
  end
end
