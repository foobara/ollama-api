require_relative "model/details"

module Foobara
  module Ai
    module OllamaApi
      class Model < Foobara::Model
        attributes do
          name :string, :required # TODO: what are the valid values for this?
          model :string, :required # TODO: what are the valid values for this?
          size :integer, :required
          digest :string, :required # TODO: create a type for this type of hash?
          details Details, :required
        end
      end
    end
  end
end
