require_relative 'square'

class Property < Square

  #constructor method
  def initialize(id, name, price, rent)
    @id = id
    @name = name
    @price = price
    @rent = rent
    @owner = "bank"
    @color = "default"
    @@squarenames << name

  end

  #accessor methods
  def color
    @color
  end
  def rent
    @rent
  end
  def owner
    @owner
  end
end

class GoSquare < Square
  @owner = "gamemaster"
  def gopay
    puts "player landed on go. player gets 200"
  end
end

class CommunityChest < Square
  @owner = "gamemaster"
  def opensesame
    puts "player opened community chest"
  end
end

class Chance < Square
  @owner = "gamemaster"
  def chance
    puts "player took a chance"
  end
end

 class Tax < Square
  @owner = "gamemaster"
   def tax
     puts "player got taxed"
   end
 end

class Jail < Square
  @owner = "gamemaster"
  def incarceration
    puts "player is in jail"
  end
  def visitation
    puts "player is just visiting"
  end
end

class FreeParking < Square
  @owner = "gamemaster"
  def moneytime
    puts "player wins the money"
  end
end

class GoToJail < Square
  @owner = "gamemaster"
  def arrest
    puts "player goes to jail. player does not pass go."
    puts "player does not collect 200. player does not drop the soap."
  end
end

