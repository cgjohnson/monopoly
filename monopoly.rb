require_relative 'player'
require_relative 'response'
require_relative 'dice'
require_relative 'bank'
require_relative 'square'
require_relative 'turn'
require_relative 'landlord'
require_relative 'verify'

class Monopoly
  def play
    Response.yesnokill("Greetings, User.\nWould you like to play a game?")
    squareindustry = SquareIndustry.new
    squareindustry.build
    playerindustry = PlayerIndustry.new
    playerindustry.build(squareindustry.manifest)
    puts 'At the beginning of each turn you have these options:'
    puts "roll the dice\npropose trade\nmortgage\nbuy/sell houses\nquit\nsave"
    puts 'Let the games begin!!!'
    TurnRegulator.turn(playerindustry.manifest, squareindustry.manifest)
  end
end



monopoly = Monopoly.new

monopoly.play

