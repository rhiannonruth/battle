require 'game'

describe Game do
  subject(:game) {described_class.new(dave, brian)}
  let(:dave){double :player}
  let(:brian){double :player}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(brian).to receive(:be_attacked)
      game.attack(brian)
    end
  end
end
