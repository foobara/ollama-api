require_relative "message"

module Foobara
  module Ai
    module OllamaApi
      class ChatCompletion < Foobara::Model
        attributes do
          model :string, :required # TODO: Make a model type
          created_at :datetime, :required
          message Message, :required
          done :boolean, :required
          total_duration :integer, :required # TODO: should we have a timespan type?
          load_duration :integer, :required
          prompt_eval_count :integer, :required
          prompt_eval_duration :integer, :required
          eval_count :integer, :required
          eval_duration :integer, :required
          # TODO: this one isn't documented for some reason
          done_reason :string # TODO: create an enum type for this
        end
      end
    end
  end
end
