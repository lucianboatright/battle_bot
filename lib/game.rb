class Game

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.damage
  end

  def player_1
    @player_1
  end

end