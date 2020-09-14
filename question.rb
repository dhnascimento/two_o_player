def question(player)
    
  num1 = rand(1..20)
  num2 = rand(1..20)
  result = num1 + num2

  puts "Player #{player.player_num}: What does #{num1} plus #{num2} equal?"

  answer = gets.chomp.to_i

  if answer == result
    puts "YES! You are correct." + "\n" + "----- NEW TURN -----"
  else
    puts "Seriously? No!"
    player.lose_life

    if player.lives != 0
      puts "----- NEW TURN -----"
    end 

  end
  
end
