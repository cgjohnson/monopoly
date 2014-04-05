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
    landlord = LandLord.new
    localtruth = true
    while localtruth
      players.each do |player|
        PlayerMover.move(player, bank, squares)
        landlord.notify(player, squares)
     end
    end
  end
end

class LandLord
  def notify(player, squares)
    @location = squares[player.position].name
    @owner = squares[player.position].owner
    @type = squares[player.position].type
    @price = squares[player.position].price
    @rent = squares[player.position].rent
    @mortgage = squares[player.position].mortgage
    if @type == "special"
      puts "Information on #{@location}:"
      puts "Type: #{@type}"
      #need if statements handling varied outcomes
      puts "something special happens!"
    else
      puts "Information on #{@location}:"
      puts "Owned by: #{@owner}"
      puts "Type: #{@type}"
      puts "Price: #{@price}"
      puts "Rent: #{@rent}"
      puts "Mortgage: #{@mortgage}"
    end
  end
end


monopoly = Monopoly.new

monopoly.play


