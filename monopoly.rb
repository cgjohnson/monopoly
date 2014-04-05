require_relative 'player'
require_relative 'response'
require_relative 'dice'
require_relative 'bank'

class Monopoly
  def play
    Response.yesnokill("Greetings, User.\nWould you like to play a game?")
    playerindustry = PlayerIndustry.new
    playerindustry.build
    TurnRegulator.turn(playerindustry.manifest)
  end
end

module TurnRegulator
  def self.turn(players)
    bank = Bank.new
    localtruth = true
    while localtruth
      players.each do |player|
        PlayerMover.move(player, bank)
      end
    end
  end
end



monopoly = Monopoly.new

monopoly.play


