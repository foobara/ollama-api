module Foobara
  module Ai
    module OllamaApi
      class BaseCommand < Foobara::Command
        include Concerns::Url
      end
    end
  end
end
