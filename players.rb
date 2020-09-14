class Player
  attr_accessor :lives
  attr_reader :player_num

  @@num_of_players = 0

  def initialize
    @lives = 3
    @@num_of_players += 1
    play_num = @@num_of_players
    @player_num = play_num
  end

  def lose_life
    self.lives -= 1
  end

end