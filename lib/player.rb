class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100

  DAMAGE_HP = 10
  
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack
    @hp -= DAMAGE_HP
  end

end