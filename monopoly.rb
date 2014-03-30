require_relative 'initialize'
require_relative 'gamemaster'
require_relative 'response'
require_relative 'player'
#require_relative 'square'

class Monopoly
  def play

    InitializeSquares.new

    GameMaster.speak("Greetings, User.")

    playtime = GameMaster.inquire("Would you like to play a game?\nyes or no")
    Response.yesnokill(playtime)

    name = GameMaster.inquire("User, what is your name?")
    player1 = Player.new(name)

    puts ""
    GameMaster.speak("Greetings, #{player1.name}!")
    GameMaster.speak("#{player1.name},")
    GameMaster.speak("your position is #{player1.position},")
    GameMaster.speak("you are on #{player1.location}.")
    GameMaster.speak("you have $#{player1.cash},")

    localtruth = true
    while localtruth
      GameMaster.move(player1)
      sleep(1)
      GameMaster.inform(player1)
      sleep(1)
      GameMaster.choice(player1)
    end
  end
end

game = Monopoly.new

game.play
