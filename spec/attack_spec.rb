require 'attack'

describe Attack do

  let(:player) {double(:player)}
  subject(:attack_class) {described_class.new(player)}

  describe '#attack' do
    it ' should take HP from player' do
      expect(player).to receive(:been_hit)
      attack_class.attack
    end
  end
end
