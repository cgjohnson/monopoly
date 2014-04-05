require_relative 'player'
require_relative 'response'
require_relative 'dice'
require_relative 'bank'
require_relative 'square'

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

module TurnRegulator
  def self.turn(players, squares)
    bank = Bank.new
    localtruth = true
    while localtruth
      players.each do |player|
        PlayerMover.move(player, bank, squares)
     end
    end
  end
end



monopoly = Monopoly.new

monopoly.play


