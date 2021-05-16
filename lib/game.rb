class Game
  attr_reader :player_1, :player_2, :current_turn
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def attack(player)
    player.damage
  end

  def switch_turn
    @current_turn = opponent
  end

  def opponent
    @current_turn == @player_1 ? player_2 : player_1
  end

  def winner?
    (@player_1.hit_points == 0 || @player_2.hit_points == 0)
  end

  def just_started?
    (@player_1.hit_points == 100 && @player_2.hit_points == 100)
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

end

