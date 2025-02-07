module Foobara
  module Ai
    module OllamaApi
      class BaseCommand < Foobara::Command
        include Concerns::Url
        include HttpApiGetCommand
      end
    end
  end
end
