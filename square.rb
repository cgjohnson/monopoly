class Square

  #array for all squares
  @@gameboard =  []

  #constructor method
  def initialize(id, name)
    @@gameboard << name
    @id = id
    @name = name
  end

  #accessor methods
  def self.gameboard
    @@gameboard
  end

  def id
    puts @id
  end
  def name
    puts @name
  end
end

class GoSquare < Square
  def payup
    puts "player landed on go. player gets 200"
  end
end

class CommunityChest < Square
  def opensesame
    puts "player opened community chest"
  end
end

class Chance < Square
  def chance
    puts "player took a chance"
  end
end

class Jail < Square
  def incarceration
    puts "player is in jail"
  end
end

class FreeParking < Square
  def moneytime
    puts "player wins the money"
  end
end

class GoToJail < Square
  def arrest
    puts "player goes to jail. player does not pass go."
    puts "player does not collect 200. player does not drop the soap."
  end
end

class Property < Square

  #constructor method
  def initialize(id, name, rent, owner)
    @@gameboard << name
    @id = id
    @name = name
    @rent = rent
    @owner = owner
    @color = "default"
  end

  #accessor methods
  def color
    puts @color
  end
  def rent
    puts @rent
  end
  def owner
    puts @owner
  end
end

class Purple < Property
  def color
    @color = "purple"
    puts @color
  end
end
