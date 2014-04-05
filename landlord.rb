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
    bank.rent(player, players, @owner, @rent)
    if @owner == "the Bank"
      puts "#{player.name}, you have $#{player.cash}," 
      puts "would you like to purchase #{@location} for $#{@price}?"
      response = gets.chomp
      localtruth = true
      while localtruth
        if response.upcase() == "YES" || response.upcase() == "Y"
          puts "Wonderful!"
          player.cash -= @price
          puts "#{player.name}, your remaining cash is: #{player.cash}!"
          squares[player.position].owner = player.name
          puts "#{squares[player.position].owner}, you now own #{@location}!"
          localtruth = false
        elsif response.upcase() == "NO" || response.upcase() == "N"
          puts "No? How dissapointing..."
          localtruth = false
        else
          puts "I'm afraid I don't understand..."
          puts "Please answer yes or no"
          response = gets.chomp
        end
      end
    end
  end
end
#might be useful...
=begin
class Check
  def monopolies
    if Square.blue[0][:owner] == Square.blue[1][:owner] && Square.blue[0][:owner] != 'the Bank'
      true
    else
      false
    end
  end
end
=end
