require 'game'

describe Game do
  subject(:game) {described_class.new(dave, brian)}
  let(:dave){double :player}
  let(:brian){double :player}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq dave
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq brian
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(brian).to receive(:be_attacked)
      game.attack(brian)
    end
  end

  describe "#current_player" do
    it 'shows who is in control at the start' do
      expect(game.current_player).to eq dave
    end
  end

  describe "#opponent" do
    it 'shows who is the opponent at the start' do
      expect(game.opponent).to eq brian
    end
  end

  describe "#switch_player" do
    it 'makes current player change to opponent' do
      game.switch
      expect(game.current_player).to eq brian
    end

    it 'makes opponent change to current player' do
      game.switch
      expect(game.opponent).to eq dave
    end
  end
end
