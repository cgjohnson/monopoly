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

  #general methods
  def identify
    puts "identifying #{@name}..."
    sleep(1)
    puts "square id: #{@id}"
    puts "square color: #{@color}"
    puts "square name: #{@name}"
  end

  #accessor methods
  def self.gameboard
    @@gameboard
  end

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
