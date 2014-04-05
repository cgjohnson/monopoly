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
  def collect(player, players, squares)
    players.each do |landlord|
      if @owner == landlord.name && @owner != player.name
        puts "Shit, you landed on a square owned by #{@owner}!"
        #using @rent[0] until monopolies can be determined, 
        #will add check here when necessary
        puts "It appears you owe $#{@rent[0]} in rent!"
        player.cash -= @rent[0]
        landlord.cash += @rent[0]
        puts "I'm afraid #{player.name} now only has $#{player.cash} in cash..."
        puts "#{landlord.name}, you now have $#{landlord.cash} in cash!"
      end
    end
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

