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
    TurnRegulator.turn(playerindustry.manifest, squareindustry.manifest)
  end
end



monopoly = Monopoly.new

monopoly.play

