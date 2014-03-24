require_relative 'square'
require_relative 'typeofsquare'
require_relative 'property'

class InitializeSquares
  def initialize
    go = GoSquare.new(0, "Go", "gamemaster")
    mediterranean = Purple.new(1, "Mediterranean Avenue", 100, 25, "purple")
    community_1 = CommunityChest.new(2, "Community Chest", "gamemaster")
    baltic = Purple.new(3, "Baltic Avenue", 100, 25, "purple")
    income_tax = Tax.new(4, "Income Tax", "gamemaster")
    reading_rr = Railroad.new(5, "Reading Railroad", 200, 25, "railroad")
    oriental = LightBlue.new(6, "Oriental Avenue", 100, 10, "light blue")
    chance_1 = Chance.new(7, "Chance", "gamemaster")
    vermont = LightBlue.new(8, "Vermont Avenue", 100, 10, "light blue")
    connecticut =  LightBlue.new(9, "Connecticut Avenue", 120, 10, "light blue")
    jail = Jail.new(10, "Jail", "gamemaster")
    st_charles = Pink.new(11, "St. Charles Place", 140, 20, "pink")
    electric_util = Utility.new(12, "Electric Company", 150, 50, "utility")
    states_ave = Pink.new(13, "States Avenue", 140, 20, "pink")
    virginia = Pink.new(14, "Virginia Avenue", 160, 20, "pink")
    penn_rr = Railroad.new(15, "Pennsylvania Railroad", 200, 25, "railroad")
    st_james = Orange.new(16, "St. James Place", 180, 25, "orange")
    community_2 =  CommunityChest.new(17, "Community Chest", "gamemaster")
    tennessee = Orange.new(18, "Tennessee Avenue", 180, 25, "orange")
    new_york = Orange.new(19, "New York Avenue", 200, 25, "orange")
    free_parking = FreeParking.new(20, "Free Parking", "gamemaster")
    kentucky = Red.new(21, "Kentucky Avenue", 220, 30, "red")
    chance_2 = Chance.new(22, "Chance", "gamemaster")
    indiana = Red.new(23, "Indiana Avenue", 220, 30, "red")
    illinois = Red.new(24, "Illinois Avenue", 240, 30, "red")
    bo_rr = Railroad.new(25, "B & O Railroad", 200, 25, "railroad")
    atlantic = Yellow.new(26, "Atlantic Avenue", 260, 30, "yellow")
    ventnor = Yellow.new(27, "Ventnor Avenue", 260, 30, "yellow")
    water_util = Utility.new(28, "Water Works", 150, 50, "utility")
    marvin_gardens = Yellow.new(29, "Marvin Gardens", 280, 30, "yellow")
    go_to_jail = GoToJail.new(30, "Go to Jail", "gamemaster")
    pacific = Green.new(31, "Pacific Avenue", 300, 30, "green")
    nc_ave = Green.new(32, "North Carolina Avenue", 300, 30, "green")
    community_3 =  CommunityChest.new(33, "Community Chest", "gamemaster")
    penn_ave = Green.new(34, "Pennsylvania Avenue", 320, 30, "green")
    shortline_rr = Railroad.new(35, "Shortline Railroad", 200, 25, "railroad")
    chance_3 =  Chance.new(36, "Chance", "gamemaster")
    park_place = Blue.new(37, "Park Place", 350, 40, "blue")
    luxury_tax =  Tax.new(38, "Luxury Tax", "gamemaster")
    boardwalk = Blue.new(39, "Boardwalk", 400, 50, "blue")
  end
end
