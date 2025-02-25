require_relative "../list_local_models"

module Foobara
  module Ai
    module OllamaApi
      module Types
        model_list = ListLocalModels.run!.map(&:model).sort
        ModelEnum = Foobara::Enumerated.make_module(model_list)
      end

      foobara_register_type(:model, :string, one_of: Types::ModelEnum)
    end
  end
end
