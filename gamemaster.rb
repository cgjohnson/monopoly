require_relative 'dice'
require_relative 'player'

class GameMaster
  attr_accessor :players, :number
  def initialize
    @players = []
    @number = 0
  end
  #action methods
  def speak(words)
    puts words
  end
  def inquire(question)
    puts question
    answer = gets.chomp
  end
  def create(player)
    player = Player.new(player)
  end
  def move(player)
    #roll the dice
    dice = Dice.new
    puts "#{player.name}, please press enter to roll the dice."
    gets
    roll = dice.roll(2)
    puts "#{player.name} is rolling the dice..."
    sleep(1)
    if roll == 8 || roll == 11
      puts "#{player.name} rolled an #{roll.to_s}"
    else
      puts "#{player.name} rolled a #{roll.to_s}"
    end

    #update array if position hits 40, pay up
    player.position += roll
    if player.position > 39
      player.position -= 40
      player.cash += 200
      puts ""
      if player.position == 0
        puts "#{player.name} landed on Go! Collect $200!"
      elsif
        puts "#{player.name} passed Go! Collect $200!"
      end
      puts "#{player.name}, you now have $#{player.cash}!"
    end
    player.location = Square.list[player.position][:name]
    unless player.position == 0
      puts"#{player.name} landed on #{player.location}, square #{player.position}."
    end
  end
  def inform(player)
    @location = Square.list[player.position][:name]
    @owner = Square.list[player.position][:owner]
    @type = Square.list[player.position][:type]
    @price = Square.list[player.position][:price]
    @rent = Square.list[player.position][:rent]
    @mortgage = Square.list[player.position][:mortgage]
    if @type == "special"
      puts ""
      puts "Information on #{@location}:"
      puts "Type: #{@type}"
      puts "something special happens!"
    else
      puts ""
      puts "Information on #{@location}:"
      puts "Owned by: #{@owner}"
      puts "Type: #{@type}"
      puts "Price: #{@price}"
      puts "Rent: #{@rent}"
      puts "Mortgage: #{@mortgage}"
    end
  end
  def choice(player)
    i = 0
    @number.times do
      if @owner == @players[i].name && @owner != player
        puts ""
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
      puts ""
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


