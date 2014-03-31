require_relative 'initialize'
require_relative 'gamemaster'
require_relative 'response'
require_relative 'player'

class Monopoly
  def play

    InitializeSquares.new

    GameMaster.speak("Greetings, User.")

    playtime = GameMaster.inquire("Would you like to play a game?\nyes or no")
    Response.yesnokill(playtime)

    @number = GameMaster.inquire("User, how many players are there in total?").to_i
    @players = []
    i = 0
    @number.times do
      puts ""
      name = GameMaster.inquire("User, what is your name?")
      @players << GameMaster.create(name)
      puts ""
      GameMaster.speak("Greetings, #{@players[i].name}!")
      i += 1
    end

    i = 0
    @number.times do
      GameMaster.speak("#{@players[i].name},")
      GameMaster.speak("your position is #{@players[i].position},")
      GameMaster.speak("you are on #{@players[i].location}.")
      GameMaster.speak("you have $#{@players[i].cash},")
      i += 1
    end

    localtruth = true
    while localtruth
      i = 0
      @number.times do
        GameMaster.move(@players[i])
        sleep(1)
        GameMaster.inform(@players[i])
        sleep(1)
        GameMaster.choice(@players[i])
        i += 1
        sleep(1)
      end
    end
  end
end

game = Monopoly.new

game.play
