require 'player'

describe Player do

  subject(:tobenna) { described_class.new("Tobenna") }
  subject(:gangsta) { described_class.new("Gangsta") }

  describe "#initialize" do
    it " returns it's name" do
      expect(tobenna.name).to eq("Tobenna")
    end
    it " has default HP" do
      expect(tobenna.hit_points).to be Player::DEFAULT_HP
    end
  end

  describe "#been_hit" do
    it " reduces hit_points" do
      expect{ gangsta.been_hit }.to change{ gangsta.hit_points }.by -Player::DEFAULT_HIT
    end
    it " reduces hit_points by random amount" do
      damage = rand(1..10)
      expect{ tobenna.been_hit(damage) }.to change{ tobenna.hit_points }.by -damage
    end
  end

  describe "#dead" do
    it " returns true when a player's hit points are 0" do
      10.times{ tobenna.been_hit }
      expect(tobenna.dead?).to be true
    end
  end
end
