# Foobara::OllamaApi

A Ruby Ollama API client using Foobara commands and models

## Installation

Typical stuff: add `gem "foobara-ollama-api` to your Gemfile or `spec.add_dependency "foobara-ollama-api"` to
your .gemspec file. Or even just `gem install foobara-ollama-api` if just playing with it directly in scripts.

## Usage

An example usage:

```ruby
irb(main):001> require "foobara/ollama_api"
=> true
irb(main):002> chat_completion = Foobara::OllamaApi::GenerateChatCompletion.run!(
  model: "llama3:8b",
  messages: [{ role: "user", content: "What is the PH of honey?" }]
)
irb(main):003> puts chat_completion.message.content
=> The pH of honey is 3.2 to 4.5 (slightly acidic.)
```

## Contributing

Bug reports and pull requests are welcome on GitHub
at https://github.com/foobara/ollama-api

## License

The gem is available as open source under the terms of the MPL-2.0 License.
See [LICENSE.txt](LICENSE.txt) for more info.
