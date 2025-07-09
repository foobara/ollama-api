module Foobara
  module Ai
    foobara_organization!

    module OllamaApi
      foobara_domain!

      class << self
        def default_llm_model
          return @default_llm_model if @default_llm_model

          require_relative "ollama_api/types/model_enum"

          ["qwen3", "deepseek-r1", "llama3.3", "gemma3"].each do |model|
            candidates = Types::ModelEnum.all_values.select do |model_name|
              model_name.start_with?(model)
            end

            next if candidates.empty?

            @default_llm_model = candidates.max_by do |candidate|
              candidate[/:([\d.]+)([mkbt])\z/, 1].to_f
            end

            return @default_llm_model
          end

          Types::ModelEnum.all_values.first
        end
      end
    end
  end
end
