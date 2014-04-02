require_relative 'initialize'
require_relative 'gamemaster'
require_relative 'playerfactory'
require_relative 'response'
require_relative 'player'

class Monopoly
  def play

    InitializeSquares.new

    gamemaster = GameMaster.new
    playerfactory = PlayerFactory.new
    gamemaster.speak("Greetings, User.")

    playtime = gamemaster.inquire("Would you like to play a game?\nyes or no")
    Response.yesnokill(playtime)

    @number = gamemaster.inquire("User, how many players are there in total?").to_i
    @players = []
    i = 0
    @number.times do
      name = gamemaster.inquire("User, what is your name?")
      @players << playerfactory.build(name)
      gamemaster.speak("Greetings, #{@players[i].name}!")
      i += 1
    end
    gamemaster.players = @players
    gamemaster.number = @number
    i = 0
    @number.times do
      gamemaster.speak("#{@players[i].name},")
      gamemaster.speak("your position is #{@players[i].position},")
      gamemaster.speak("you are on #{@players[i].location}.")
      gamemaster.speak("you have $#{@players[i].cash},")
      i += 1
    end

    localtruth = true
    while localtruth
      i = 0
      @number.times do
        gamemaster.move(@players[i])
        gamemaster.inform(@players[i])
        gamemaster.choice(@players[i])
        i += 1
      end
    end
  end
end

game = Monopoly.new

game.play
