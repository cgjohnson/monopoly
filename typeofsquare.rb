require_relative 'square'

class Property < Square

  #constructor method
  def initialize(id, name, price, rent, color)
    @id = id
    @name = name
    @price = price
    @rent = rent
    @owner = "the bank"
    @color = color
    @@squarenames << @name
    @@squareowners << @owner
    @@squarecolors << @color
    @@squareprices << @price
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
  def gopay(player, cash)
    puts "#{player} passed or landed on Go! Collect $200!"
    player.cash = cash + 200
    cash_s = player.cash.to_s
    puts "#{player now has #{cash_s} in cash."
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

