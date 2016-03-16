require 'game'

describe Game do
	let(:devil) {double :devil, :been_hit => nil}
	let(:god) {double :god, :been_hit => nil}
	subject(:game) {described_class.new}

	describe '#attack' do

		it 'calls the been_hit method' do
			expect(god).to receive(:been_hit)	
			game.attack(god)
		end
	end	
end