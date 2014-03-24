require_relative 'square'
require_relative 'typeofsquare'
require_relative 'property'

class Player

  #constructor method
  def initialize(id, name)
    @id = id
    @name = name
    @position = 0
    @cash = 2500
    @location = Square.squarenames[@position]
    @owner = Square.squareowners[@position]
    @color = Square.squarecolors[@position]
    @price = Square.squareprices[@position]
    @price_s = Square.squareprices[@position].to_s

  end

  #accessor methods
  def id
    @id
  end
  def name
    @name
  end
  def position
    @position
  end
  def location
    @location
  end
   def cash
    @cash
  end

  #string accessor methods
  def id_s
    @id.to_s
  end
  def position_s
    @position.to_s
  end
   def cash_s
    @cash.to_s
  end

  #action methods
  def rollthedice
    dice = Dice.new
    puts "#{@name} is rolling the dice..."
    sleep(1)
    @roll = dice.roll
    @roll_s = @roll.to_s
    if @roll == 8 || @roll == 11
      puts "#{@name} rolled an #{@roll_s}"
    else
      puts "#{@name} rolled a #{@roll_s}"
    end
  end
  def move
    @position +=@roll
    if @position > 39
      @position = @position - 40
    end
    @location = Square.squarenames[@position]
    @owner = Square.squareowners[@position]
    @color = Square.squarecolors[@position]
    @price = Square.squareprices[@position]
    @price_s = Square.squareprices[@position].to_s
  end
  def choose
    puts "#{@name} landed on #{@location}"
    puts "Information on #{@location}:"
    puts "Owned by: #{@owner}"
    puts "Color: #{@color}"
    puts "Price: #{@price_s}"
    puts " "
    if @owner == "the bank"
      puts "#{@name}, would you like to purchase #{@location} for $#{@price_s}?"
      response = gets.chomp
      localtruth = true
      while localtruth
        if response.upcase() == "YES" || response.upcase() == "Y"
          puts "Wonderful!"
          @cash = @cash - @price
          puts "#{@name}, your remaining cash is: #{@cash}!"
          Square.squareowners[@position] = @name
          @owner = Square.squareowners[@position]
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

=begin
  def buy
    puts "#{@name} buys property"
  end
  def mortgage
    puts "#{@name} mortgages property"
  end
  def bankrupt
    puts "#{@name} declares bankruptcy"
  end
  def payup
    puts "#{@name} pays up"
  end
  def receive
    puts "#{@name} receives money"
  end
  def jail
    puts "#{@name} is in jail"
  end
end

   new_position = @position + total
    puts "#{@name}'s new position: #{Square.gameboard[new_position]}"
    @position = new_position
=end
