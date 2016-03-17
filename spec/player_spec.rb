require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:brian) { Player.new('Brian') }


  describe '#name' do
    it "return player name" do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hitpoints' do
    it 'returns the hit points' do
      expect(dave.hitpoints).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#be_attacked" do
    it 'reduces the player hit points' do
      expect{dave.be_attacked}.to change {dave.hitpoints}.by(-10)
    end
  end

  describe '#dead?' do
    it "returns player's dead status when alive" do
      expect(dave.dead?).to eq false
    end

    it "returns player's dead status when at 0HP or less" do
      allow(brian).to receive(:hitpoints){0}
      expect(brian.dead?).to eq true
    end
  end
end
