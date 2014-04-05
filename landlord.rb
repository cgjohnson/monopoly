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
  def options(player, bank, squares)
    owned = []
    squares.each do |square|
      if square.owner == player.name #&& no houses/hotels
        owned << square
      end
    end
    if owned.length > 0
      puts "this is owned.length: #{owned.length}"
      bank.mortgage(player, owned)
    end
=begin
    if 'player owns properties with houses/hotel'
      bank.sell(player, properties)
    end
    if 'player has monopolies'
      bank.monopolize(player, colors)
    end
=end
  end
end
