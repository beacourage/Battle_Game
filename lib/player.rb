class Player
  DEFAULT_POINTS = 60
  attr_reader :name, :points

  def initialize(name, points = DEFAULT_POINTS)
    @name = name
    @points = points
  end


  def attack(player)
    player.be_damaged
  end

  def be_damaged
    @points -= 10
  end
end
