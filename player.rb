class Player

  #constructor method
  def initialize(id, name)
    @id = id
    @name = name
    @position = 0
    @cash = 2500
  end

  #accessor methods
  def id
    puts @id
  end
  def name
    puts @name
  end
  def position
    puts Square.gameboard[@position]
  end
  def cash
    puts @cash
  end

  #action methods
  def roll
    puts "#{@name} rolls dice..."
    dice_1 = rand(1..6)
    dice_2 = rand(1..6)
    total = (dice_1 + dice_2)
    sleep(1)
    puts "#{@name} rolls " + total.to_s
    new_position = @position + total
    puts "#{@name}'s new position: #{Square.gameboard[new_position]}"
    @position = new_position
  end
  def buy
    puts "#{@name} buys property"
  end
  def mortgage
    puts "#{@name} mortgages proptery"
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

