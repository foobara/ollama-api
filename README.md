# Foobara::OllamaApi

A Ruby Ollama API client using Foobara commands and models

## Installation

Typical stuff: add `gem "foobara-ollama-api` to your Gemfile or `spec.add_dependency "foobara-ollama-api"` to
your .gemspec file. Or even just `gem install foobara-ollama-api` if just playing with it directly in scripts.

## Usage

An example usage:

```irb
irb(main):001> require "foobara/ollama_api"
=> true
irb(main):002* chat_completion = Foobara::Ai::OllamaApi::GenerateChatCompletion.run!(
irb(main):003*   model: "llama3:8b",
irb(main):004*   messages: [{ role: "user", content: "What is the PH of honey?" }]
irb(main):005> )
=> #<Foobara::Ai::OllamaApi::ChatCompletion:0x00007fae1e61a868...
irb(main):006> puts chat_completion.message.content
A sweet question!

The pH of honey can vary depending on several factors, such as the type of flowers that the bees collect nectar from, the region where the honey is produced, and the processing methods used.

  Generally, the pH of honey ranges from slightly acidic to neutral. Here are some approximate pH values for different types of honey:

* Clover honey: pH 3.2-4.5
* Orange blossom honey: pH 3.5-4.8
* Tupelo honey: pH 4.0-5.0
* Manuka honey: pH 4.5-5.5
* Wildflower honey: pH 3.5-5.0

On average, the pH of honey is around 4.2 to 4.5, which is slightly acidic to neutral. This is because honey contains small amounts of acids, such as gluconic acid and lactic acid, which are produced during fermentation by the bees.

  It's worth noting that some types of honey, like Manuka honey, have a higher pH due to the presence of methylglyoxal (MGO), a compound that contributes to their unique properties.
=> nil
irb(main):007>
```

## Contributing

Bug reports and pull requests are welcome on GitHub
at https://github.com/foobara/ollama-api

## License

The gem is available as open source under the terms of the MPL-2.0 License.
See [LICENSE.txt](LICENSE.txt) for more info.
