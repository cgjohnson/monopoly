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
  def visitation
    puts "player is just visiting"
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
  def initialize(id, name, price, rent)
    @@gameboard << name
    @id = id
    @name = name
    @price = price
    @rent = rent
    @owner = "bank"
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
class LightBlue < Property
  def color
    @color = "lightblue"
    puts @color
  end
end

class Pink < Property
  def color
    @color = "pink"
    puts @color
  end
end

class Orange < Property
  def color
    @color = "orange"
    puts @color
  end
end

class Red < Property
  def color
    @color = "red"
    puts @color
  end
end

class Yellow < Property
  def color
    @color = "yellow"
    puts @color
  end
end

class Green < Property
  def color
    @color = "green"
    puts @color
  end
end

class Blue < Property
  def color
    @color = "blue"
    puts @color
  end
end

class Railroad < Property
  def color
    @color = "railroad"
    puts @color
  end
end

class Utility < Property
  def color
    @color = "utility"
  end
end
