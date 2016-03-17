class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  require 'pry'; binding.pry
  def attack(player)
   player.be_attacked
  end

end
