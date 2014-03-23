
#Square subclasses
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

 class Tax < Square
   def tax
     puts "player got taxed"
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
