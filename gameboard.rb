require_relative 'master'
require_relative 'dice'
require_relative 'player'

class GameBoard

  #action methods
  def self.move(player)

    #roll the dice
    dice = Dice.new
    GameMaster.inquire("#{player.name}, please press enter to roll the dice.")
    roll = dice.roll(2)
    GameMaster.speak("#{player.name} is rolling the dice...")
    sleep(1)
    if roll == 8 || roll == 11
      puts "#{player.name} rolled an #{roll.to_s}"
    else
      puts "#{player.name} rolled a #{roll.to_s}"
    end
    sleep(1)
    #update array if position hits 40, pay up
    player.position += roll
    if player.position > 39
      player.position -= 40
      player.cash += 200
      if player.position == 0
        GameMaster.speak("#{player.name} landed on Go! Collect $200!")
      elsif
        GameMaster.speak("#{player.name} passed Go! Collect $200!")
      end
    end
    player.location = Square.list[player.position][:name]
    unless player.position == 0
      GameMaster.speak("#{player.name} landed on #{player.location}")
    end
  end
end

