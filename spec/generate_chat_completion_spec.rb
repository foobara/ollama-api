RSpec.describe Foobara::Ai::OllamaApi::GenerateChatCompletion do
  let(:inputs) do
    {
      model:,
      messages:
    }.tap do |hash|
      if temperature
        hash[:options] = { temperature: }
      end
    end
  end
  let(:model) { "llama3:8b" }
  let(:messages) do
    [
      { role: "user", content: "What is the PH of honey?" }
    ]
  end
  let(:temperature) { 0 }

  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }

  it "can create a message result", vcr: { record: :none } do
    expect(outcome).to be_success
    expect(result).to be_a(Foobara::Ai::OllamaApi::Types::ChatCompletion)
    expect(result.message.content).to match(/pH of honey.*\d+\.\d+ (and|to) \d+\.\d+/mi)
  end
end
