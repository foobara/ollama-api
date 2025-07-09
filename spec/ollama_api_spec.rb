RSpec.describe Foobara::Ai::OllamaApi do
  after { described_class.reset_all }

  describe ".default_llm_model" do
    context "when a few versions of qwen3 are installed" do
      let(:models) do
        [
          :"qwen3:0.6b",
          :"qwen3:8b",
          :"smollm2:135m",
          :"qwen3:1.7b"
        ]
      end

      before do
        stub_const(
          "Foobara::Ai::OllamaApi::Types::ModelEnum",
          Foobara::Enumerated.make_module(models)
        )
      end

      it "returns the highest version" do
        expect(described_class.default_llm_model).to eq(:"qwen3:8b")
      end

      context "when none of the usual suspects are pulled" do
        let(:models) { [:"smollm2:135m"] }

        it "just returns whatever" do
          expect(described_class.default_llm_model).to eq(:"smollm2:135m")
        end
      end
    end
  end
end
