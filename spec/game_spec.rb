require 'game'

describe Game do
  subject(:game) {described_class.new(dave, brian)}
  let(:dave){double :player}
  let(:brian){double :player}

  describe "#attack" do
    it 'damages the player' do
      expect(brian).to receive(:be_attacked)
      game.attack(brian)
    end
  end
end
