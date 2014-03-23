require_relative 'square'
require_relative 'typeofsquare'
require_relative 'property'

class Player

  #constructor method
  def initialize(id, name)
    @id = id
    @name = name
    @position = 0
    @location = Square.gameboard[@position]
    @cash = 2500
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
  def rolldice
    dice = Dice.new
    puts "#{@name} rolls dice..."
    sleep(1)
    @roll = dice.roll
    puts "#{@name} rolls " + dice.to_s
   end
  def move
    @position +=@roll
    puts "#{@name} landed on #{@location}"
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
