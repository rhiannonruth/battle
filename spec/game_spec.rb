require 'game'

describe Game do

  describe "#attack" do
    it 'damages the player' do
      expect(brian).to receive(:be_attacked)
      dave.attack(brian)
    end
  end
end
