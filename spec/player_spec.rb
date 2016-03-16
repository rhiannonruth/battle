require 'player'

describe Player do

  subject(:tobenna) { described_class.new("Tobenna") }
  subject(:gangsta) { described_class.new("Gangsta") }

  describe "#initialize" do
    it "returns it's name" do
      expect(tobenna.name).to eq("Tobenna")
    end
    it "has default HP" do
      expect(tobenna.hit_points).to be Player::DEFAULT_HP
    end
  end

  describe "#been_hit" do
    it "reduces hit_points by default hit" do
      expect{ gangsta.been_hit }.to change{ gangsta.hit_points }.by -Player::DEFAULT_HIT
    end
  end
end
