require "net/http"
require "uri"

require "foobara/all"
require "foobara/http_api_command"

require_relative "../../src/foobara/ai/ollama_api"

Foobara::Util.require_directory "#{__dir__}/../../src"
