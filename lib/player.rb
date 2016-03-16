class Player

  DEFAULT_HP = 100
  DEFAULT_HIT = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points=DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.been_hit
  end

  def been_hit
    @hit_points -= DEFAULT_HIT
  end

end
