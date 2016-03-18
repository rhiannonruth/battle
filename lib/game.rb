class Game

  attr_reader :player_1, :player_2, :current_player, :opponent

  def self.start(player_1, player_2)
    @game ||= Game.new(player_1, player_2)
  end

  def self.get_game
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @opponent = player_2
  end
  #require 'pry'; binding.pry
  def attack(player)
   player.be_attacked
  end

  def switch
    @current_player = (@current_player == @player_1 ? @player_2 : @player_1)
    @opponent = (@opponent == @player_2 ? @player_1 : @player_2)
  end

end
