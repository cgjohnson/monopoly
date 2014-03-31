require_relative 'initialize'
require_relative 'gamemaster'
require_relative 'response'
require_relative 'player'

class Monopoly
  def play

    InitializeSquares.new

    gamemaster = GameMaster.new
    gamemaster.speak("Greetings, User.")

    playtime = gamemaster.inquire("Would you like to play a game?\nyes or no")
    Response.yesnokill(playtime)

    @number = gamemaster.inquire("User, how many players are there in total?").to_i
    @players = []
    i = 0
    @number.times do
      puts ""
      name = gamemaster.inquire("User, what is your name?")
      @players << gamemaster.create(name)
      puts ""
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
        sleep(1)
        gamemaster.inform(@players[i])
        sleep(1)
        gamemaster.choice(@players[i])
        i += 1
        sleep(1)
      end
    end
  end
end

game = Monopoly.new

game.play
