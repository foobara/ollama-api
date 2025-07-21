RSpec.describe Foobara::Ai::OllamaApi::ListRunningModels do
  before do
    Foobara::CachedCommand.reset_all
  end

  let(:command) { described_class.new }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }

  it "can create a message result", vcr: { record: :none } do
    expect(outcome).to be_success
    expect(result).to be_an(Array)
    expect(result).to all be_a(Foobara::Ai::OllamaApi::Types::Model)
    expect(result.first.details.families.first).to be_a(String)
  end
end
