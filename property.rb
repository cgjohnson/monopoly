require_relative 'square'

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
    puts @color
  end
end

#initialize gameboard
go = GoSquare.new(0, "go")
mediterranean = Purple.new(1, "mediterranean", 100, 25)
community_1 = CommunityChest.new(2, "community chest")
baltic = Purple.new(2, "baltic", 100, 25)
income_tax = Tax.new(3, "income")
reading_rr = Railroad.new(4, "reading", 200, 25)
oriental = LightBlue.new(5, "oriental", 100, 10)
chance_1 = Chance.new(6, "chance")
vermont = LightBlue.new(7, "vermont", 100, 10)
connecticut =  LightBlue.new(8, "connecticut", 120, 10)
jail = Jail.new(9, "jail")
st_charles = Pink.new(10, "st charles", 140, 20)
electric_util = Utility.new(11, "electric", 150, 50)
states_ave = Pink.new(12, "states ave", 140, 20)
virginia = Pink.new(13, "virginia", 160, 20)
penn_rr = Railroad.new(14, "penn rr", 200, 25)
st_james = Orange.new(15, "st james", 180, 25)
community_2 =  CommunityChest.new(16, "community chest")
tennessee = Orange.new(17, "tennessee", 180, 25)
new_york = Orange.new(18, "new york", 200, 25)
free_parking = FreeParking.new(19, "free parking")
kentucky = Red.new(20, "kentucky", 220, 30)
chance_2 = Chance.new(21, "chance")
indiana = Red.new(22, "indiana", 220, 30)
illinois = Red.new(23, "illinois", 240, 30)
bo_rr = Railroad.new(24, "b&o rr", 200, 25)
atlantic = Yellow.new(25, "atlantic", 260, 30)
ventnor = Yellow.new(26, "ventnor", 260, 30)
water_util = Utility.new(27, "water", 150, 50)
marvin_gardens = Yellow.new(28, "marvin gardens", 280, 30)
go_to_jail = GoToJail.new(29, "go to jail")
pacific = Green.new(30, "pacific", 300, 30)
nc_ave = Green.new(31, "nc ave", 300, 30)
community_3 =  CommunityChest.new(32, "community chest")
penn_ave = Green.new(33, "penn ave", 320, 30)
shortline_rr = Railroad.new(34, "shortline rr", 200, 25)
chance_3 =  Chance.new(35, "chance")
park_place = Blue.new(36, "park place", 350, 40)
luxury_tax =  Tax.new(37, "luxury")
boardwalk = Blue.new(38, "boardwalk", 400, 50)

