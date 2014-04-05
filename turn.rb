module TurnRegulator
  def self.turn(players, squares)
    bank        = Bank.new
    landlord    = LandLord.new
    localtruth  = true
    while localtruth
      players.each do |player|
        PlayerMover.move(player, bank, squares)
        landlord.notify(player, squares)
        landlord.collect(player, players, squares, bank)
     end
    end
  end
end

