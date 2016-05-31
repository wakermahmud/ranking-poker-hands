RSpec.shared_examples "card group" do |attr|
  describe "#high_value" do
    it "returns the value of the highest card" do
      cards = [mock_card(2, "C"), mock_card(13, "H"), mock_card(10, "D")]
      attributes = attr ? attr.merge(cards: cards) : { cards: cards }

      result = described_class.new(**attributes).high_value

      expect(result).to eq(13)
    end
  end

  describe "#size" do
    it "returns the number of cards in the group" do
      cards = [mock_card(2, "C"), mock_card(13, "H"), mock_card(10, "D")]
      attributes = attr ? attr.merge(cards: cards) : { cards: cards }

      result = described_class.new(**attributes).size

      expect(result).to eq(3)
    end
  end
end
