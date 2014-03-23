#Monopoly

require_relative 'dice'
require_relative 'square'
require_relative 'typeofsquare'
require_relative 'property'
require_relative 'player'
require_relative 'initialize'
require_relative 'gamemaster'


class Monopoly
  def play
    InitializeSquares.new
    gamemaster = GameMaster.new
    responsemaster = ResponseMaster.new

    gamemaster.speak("Greetings, User.")

    playtime =gamemaster.inquire("Would you like to play a game?\nyes or no")
    responsemaster.yesno(playtime, gamemaster)

    name = gamemaster.inquire("User, what is your name?")
    player1 = Player.new(0, name)

    puts "Greetings, #{player1.name}!"
  end
end

game = Monopoly.new

game.play
