require 'game'

describe Game do
	let(:devil) { double :devil, :been_hit => nil }
	let(:god) { double :god, :been_hit => nil }
	subject(:game) { described_class.new(devil, god) }

	describe '#initialize' do

		it 'starts with a player 1' do
			expect(game.player1).to eq devil
		end

		it 'starts with a player 2' do
			expect(game.player2).to eq god
		end

		it 'starts with the current_player being player 1' do
			expect(game.current_player).to eq devil
		end

	end

	describe '#attack' do

		it 'calls the been_hit method' do
			expect(god).to receive(:been_hit)
			game.attack(god)
		end
	end

	describe '#current_opponent' do

		it 'shows the current_opponent' do
			expect(game.current_opponent).to eq god
		end

	end

	describe '#switch_player' do

		it 'changed the current_player' do
			game.switch_player
			expect(game.current_player).to eq god
		end
	end
end
