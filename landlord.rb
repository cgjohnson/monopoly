class LandLord
  def notify(player, squares)
    @location = squares[player.position].name
    @owner    = squares[player.position].owner
    @type     = squares[player.position].type
    @price    = squares[player.position].price
    @rent     = squares[player.position].rent
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
  def collect(player, players, squares, bank)
    bank.rent(player, players, squares, @owner, @rent)
    bank.sell(player, squares, @owner, @location, @price)
  end
end
