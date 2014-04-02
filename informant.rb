require_relative 'player'
require_relative 'square'

class Informant
  def inform(player)
    @location = Square.list[player.position][:name]
    @owner = Square.list[player.position][:owner]
    @type = Square.list[player.position][:type]
    @price = Square.list[player.position][:price]
    @rent = Square.list[player.position][:rent]
    @mortgage = Square.list[player.position][:mortgage]
    if @type == "special"
      puts "Information on #{@location}:"
      puts "Type: #{@type}"
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
  def choice(player, number, playerlist)
    i = 0
    number.times do
      if @owner == playerlist[i].name && @owner != player
        puts "Shit, you landed on a square owned by #{@owner}!"
        puts "You owe money!" 
        puts "I'll get to work on determining the exact amounts and deducting it later..."
        puts "Oh no! You have to pay $#{@rent[0]} in rent!"
        player.cash -= @rent[0]
        puts "I'm afraid you now only have $#{player.cash} in cash..."
      end
      i += 1
    end
    if @owner == "the bank"
      puts "#{player.name}, you have $#{player.cash}," 
      puts "would you like to purchase #{@location} for $#{@price}?"
      response = gets.chomp
      localtruth = true
      while localtruth
        if response.upcase() == "YES" || response.upcase() == "Y"
          puts "Wonderful!"
          player.cash -= @price
          puts "#{player.name}, your remaining cash is: #{player.cash}!"
          Square.list[player.position][:owner] = player.name
          @owner = Square.list[player.position][:owner]
          puts "#{@owner}, you now own #{@location}!"
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
