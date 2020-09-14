class Game
  
  def self.start
    play1 = Player.new
    play2 = Player.new

    while play1.lives > 0 || play2.lives > 0

      question(play1) 
      
      if play1.lives == 0
        break
      end

      puts "P1: #{play1.lives}/3 vs P2: #{play2.lives}/3"

      question(play2) 
      
      if play2.lives == 0
        break
      end

      puts "P1: #{play1.lives}/3 vs P2: #{play2.lives}/3"

    end

    if play2.lives == 0
      puts "Player #{play1.player_num} wins with a score of #{play1.lives}/3" + "\n" + "----- GAME OVER -----" + "\n" + "Good bye!" 
    else
      puts "Player #{play2.player_num} wins with a score of #{play2.lives}/3" + "\n" + "----- GAME OVER -----" + "\n" + "Good bye!"
    end

  end

end