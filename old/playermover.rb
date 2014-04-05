require_relative 'dice'
require_relative 'square'
require_relative 'player'

class PlayerMover
  def move(player)
    #roll the dice
    dice = Dice.new
    puts "#{player.name}, please press enter to roll the dice."
    gets
    roll = dice.roll(2)
    puts "#{player.name} is rolling the dice..."
    sleep(1)
    if roll == 8 || roll == 11
      puts "#{player.name} rolled an #{roll.to_s}"
    else
      puts "#{player.name} rolled a #{roll.to_s}"
    end

    #update array if position hits 40, pay up
    player.position += roll
    if player.position > 39
      player.position -= 40
      player.cash += 200
      if player.position == 0
        puts "#{player.name} landed on Go! Collect $200!"
      elsif
        puts "#{player.name} passed Go! Collect $200!"
      end
      puts "#{player.name}, you now have $#{player.cash}!"
    end
    player.location = Square.list[player.position][:name]
    unless player.position == 0
      puts"#{player.name} landed on #{player.location}, square #{player.position}."
    end
  end
end
