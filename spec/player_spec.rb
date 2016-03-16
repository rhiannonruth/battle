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
end
