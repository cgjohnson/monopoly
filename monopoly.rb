#Monopoly

class Square

  #array for all squares
  @@gameboard =  []

  #constructor method
  def initialize(id, color, name, owner)
    @@gameboard << name
    @id = id
    @color = color
    @name = name
    @owner = owner
  end
  def identify
    puts "identifying #{@name}..."
    sleep(1)
    puts "square id: #{@id}"
    puts "square color: #{@color}"
    puts "square name: #{@name}"
  end
  def self.gameboard
    @@gameboard
  end

  #accessor methods
  def id
    puts @id
  end
  def color
    puts @color
  end
  def name
    puts @name
  end
  def owner
    puts @owner
  end
end

class GoSquare < Square
  def payup
    puts "player landed on go. player gets 200"
  end
end

class Player
  def initialize(id, name)
    @id = id
    @name = name
    @position = 0
  end
  def identify
    puts "identifying #{@name}..."
    sleep(1)
    puts "player name: #{@name}"
    puts "player id: #{@id}"
  end
  def locate
    puts "locating #{@name}..."
    sleep(1)
    puts "#{@name} is on #{Square.gameboard[@position]}"
  end
  def roll
    puts "#{@name} rolls dice..."
    dice_1 = rand(1..6)
    dice_2 = rand(1..6)
    total = (dice_1 + dice_2).to_s
    sleep(1)

    puts "chuck rolls " + total
  end
  def buy
    puts "#{@name} buys property"
  end
  def mortgage
    puts "#{@name} mortgages proptery"
  end
  def cash
    puts "#{@name} has cash"
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

chuck = Player.new(1, "chuck")
go = GoSquare.new(0, :none, "go", "bank")
melrose = Square.new(1, :purple, "melrose place", "bank")

chuck.locate
